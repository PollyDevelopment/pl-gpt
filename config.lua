Config = {}

-- Bot settings
Config.BotName = "ChatGPT"
Config.DefaultResponse = "I'm not sure how to respond to that. Can you ask something else?"

-- Predefined responses
Config.Responses = {
    ["hello"] = "Hello! How can I assist you today?",
    ["how are you?"] = "I'm just a bot, but I'm here to help you!",
    ["what is your name?"] = "I am " .. Config.BotName .. ", your virtual assistant.",
    ["help"] = "What do you need help with? Feel free to ask me anything!",
    ["what can you do?"] = "I can answer questions, provide information, and assist you with various tasks!",
    ["goodbye"] = "Goodbye! Have a great day!",
    ["thank you"] = "You're welcome! If you have more questions, feel free to ask."
}

-- API settings (if using ChatGPT API)
Config.UseAPI = false -- Set to true if you want to use the ChatGPT API
Config.OpenAI_API_Key = "YOUR_OPENAI_API_KEY" -- Replace with your actual API key
Config.OpenAI_Model = "gpt-3.5-turbo" -- Model to use for API calls