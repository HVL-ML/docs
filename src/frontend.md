# Getting started with hugging chat

Clone the repo and install using npm, pnpm or bun: 

```
git clone https://github.com/HVL-ML/chat-ui
cd chat-ui
npm install
npm run dev -- --open
```

Make sure a mongodb instance is running:

```
docker run -d -p 27017:27017 --name mongo-chatui mongo:latest
```

Create an .env.local in the root with the following information (Make sure to replace `YOUR_API_KEY` with a real key):

```env
MODELS= `[{
  "name": "Meta-Llama-3-1-405B-Instruct",
  "displayName": "Meta-Llama-3-1-405B-Instruct",
 "chatPromptTemplate": "<s>[INST] <<SYS>>\n{{preprompt}}\n<</SYS>>\n\n{{#each messages}}{{#ifUser}}{{content}} [/INST] {{/ifUser}}{{#ifAssistant}}{{content}} </s><s>[INST] {{/ifAssistant}}{{/each}}",
  "endpoints": [{
     "url": "https://Meta-Llama-3-1-405B-Instruct-nvn.eastus2.models.ai.azure.com",
     "type": "openai",
     "authorization": "Bearer YOUR_API_KEY",
  }]},{
    "name": "Mistral-large-2407",
  "displayName": "Mistral-large-2407",
  "chatPromptTemplate": "<s>{{#each messages}}{{#ifUser}}[INST] {{#if @first}}{{#if @root.preprompt}}{{@root.preprompt}}\n{{/if}}{{/if}} {{content}} [/INST]{{/ifUser}}{{#ifAssistant}}{{content}}</s> {{/ifAssistant}}{{/each}}",
  "endpoints": [{
     "url": "https://Mistral-large-2407-kfedo.eastus2.models.ai.azure.com",
     "type": "openai",
     "authorization": "Bearer YOUR_API_KEY",
  }]
}]`
MONGODB_URL=mongodb://localhost:27017
```