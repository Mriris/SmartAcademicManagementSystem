using Newtonsoft.Json;
using System.Configuration;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

public class OpenAiService
{
    private static readonly HttpClient _httpClient = new HttpClient();
    public async Task<string> GetGptResponse(string message)
    {
        // 设置API请求的URL
        string apiUrl = "https://api.openai.com/v1/chat/completions";

        // 创建请求体
        var requestData = new
        {
            model = "gpt-3.5-turbo",
            messages = new[]
    {
        new { role = "system", content = "你是一个说中文的职业生涯规划分析师" },
        new { role = "user", content = message }
    },
            max_tokens = 500
        };
        // 序列化请求数据为JSON
        string jsonRequest = JsonConvert.SerializeObject(requestData);
        HttpContent content = new StringContent(jsonRequest, Encoding.UTF8, "application/json");
        // 设置请求头
        _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", ConfigurationManager.AppSettings["gpt-key"]);
        // 发送请求
        var response = await _httpClient.PostAsync(apiUrl, content);
        // 处理响应
        if (response.IsSuccessStatusCode)
        {
            var jsonResponse = await response.Content.ReadAsStringAsync();
            dynamic responseObject = JsonConvert.DeserializeObject(jsonResponse);

            return responseObject.choices[0].message.content;
        }
        else
        {
            // 请求失败，可以根据需要进行处理
            return $"错误: {response.StatusCode}";
        }
    }
}
