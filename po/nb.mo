��          �   %   �      @  /   A     q  2   y  v   �     #     ,  !   <  j   ^  f   �     0  (   =     f  :   u     �  ]   �          '  �  ,             	  �   �	  `   &
  �  �
    a  +   g     �  1   �  s   �     A  
   J     U  m   q  i   �     I  (   V       A   �     �  �   �  
   d     o  �  t    i    x  |   �  �     `   �  �  �                                       
                                                                                	       Avaliable Models for testing on HVL Azure cloud Backend Clone the repo and install using npm, pnpm or bun: Create an .env.local in the root with the following information (Make sure to replace `YOUR_API_KEY` with a real key): Frontend Getting Started Getting started with hugging chat Input Tokens: $0.00533 per 1000 tokens Output Tokens: $0.016 per 1000 tokens Cost per 1m I/O tokens: $21.3 Input Tokens: $0.009 per 1000 tokens Output Tokens: $0.003 per 1000 tokens Cost per 1m I/O tokens: $11 Introduction Make sure a mongodb instance is running: Meta Llama 3.1 Meta Llama 3.1 is deployed and accessible at this address: Mistral Large V2 Note that you will need a key to access these APIs. You can aquire a key by contact an admin. Summary Test The Meta Llama 3.1 collection of multilingual large language models (LLMs) is a collection of pretrained and instruction tuned generative models in 8B, 70B and 405B sizes (text in/text out). The Llama 3.1 instruction tuned text only models (8B, 70B, 405B) are optimized for multilingual dialogue use cases and outperform many of the available open source and closed chat models on common industry benchmarks.[1](https://huggingface.co/meta-llama/Meta-Llama-3.1-405B-Instruct) You can access the completions api here: [/chat/completions](https://Meta-Llama-3-1-405B-Instruct-nvn.eastus2.models.ai.azure.com/chat/completions) or alternatively here: [/v1/chat/completions](https://Meta-Llama-3-1-405B-Instruct-nvn.eastus2.models.ai.azure.com/) You can access the completions api here: [/chat/completions](https://Mistral-large-2407-kfedo.eastus2.models.ai.azure.com/chat/completions) or alternatively here: [/v1/chat/completions](https://Mistral-large-2407-kfedo.eastus2.models.ai.azure.com/v1/chat/completions) [pricing](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/000-000.mistral-ai-large-2407-offer?tab=PlansAndPrice): [pricing](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/metagenai.meta-llama-3-1-405b-instruct-offer?tab=PlansAndPrice): ```
git clone https://github.com/HVL-ML/chat-ui
cd chat-ui
npm install
npm run dev -- --open
``` ```env
MODELS= `[{
  "name": "Meta-Llama-3-1-405B-Instruct",
  "displayName": "Meta-Llama-3-1-405B-Instruct",
 "chatPromptTemplate": "<s>[INST] <<SYS>>\n{{preprompt}}\n<</SYS>>\n\n{{#each messages}}{{#ifUser}}{{content}} [/INST] {{/ifUser}}{{#ifAssistant}}{{content}} </s><s>[INST] {{/ifAssistant}}{{/each}}",
  "endpoints": [{
      "type" : "openai",
      "baseURL": "https://Meta-Llama-3-1-405B-Instruct-nvn.eastus2.models.ai.azure.com/v1",
     "apiKey": "YOUR_API_KEY",
  }]},{
    "name": "Mistral-large-2407",
  "displayName": "Mistral-large-2407",
  "chatPromptTemplate": "<s>{{#each messages}}{{#ifUser}}[INST] {{#if @first}}{{#if @root.preprompt}}{{@root.preprompt}}\n{{/if}}{{/if}} {{content}} [/INST]{{/ifUser}}{{#ifAssistant}}{{content}}</s> {{/ifAssistant}}{{/each}}",
  "endpoints": [{
     "url": "https://Mistral-large-2407-kfedo.eastus2.models.ai.azure.com/v1",
     "type": "openai",
     "apiKey": "YOUR_API_KEY",
  }]
}]`
MONGODB_URL=mongodb://localhost:27017
``` Project-Id-Version: HVL AI Dev Docs
PO-Revision-Date: 
Last-Translator: 
Language-Team: 
Language: nb
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Poedit 3.4.4
 Modeller som kan testes på HVL Azure-skyen Backend Klon repoen og installer med npm, pnpm eller bun: Opprett en .env.local i roten med følgende informasjon (sørg for å erstatte `YOUR_API_KEY` med en ekte nøkkel): Frontend Kom i gang Kom i gang med Hugging Chat Input tokens: $0,00533 per 1000 tokens Output tokens: $0,016 per 1000 tokens Kostnad per 1m I/O tokens: $21,3 Input tokens: $0,009 per 1000 tokens Output tokens: $0,003 per 1000 tokens Kostnad per 1m I/O tokens: $11 Introduksjon Sørg for at en mongodb-instans kjører: Meta Llama 3.1 Meta Llama 3.1 er distribuert og tilgjengelig på denne adressen: Mistral Large V2 Merk at du trenger en nøkkel for å få tilgang til disse API-ene. Du kan skaffe deg en nøkkel ved å kontakte en administrator. Sammendrag Test Meta Llama 3.1-samlingen av flerspråklige store språkmodeller (LLM-er) er en samling av forhåndstrenede og instruksjonsinnstilte generative modeller i størrelsene 8B, 70B og 405B (tekst inn/tekst ut). Llama 3.1-instruksjonsjusterte tekstmodeller (8B, 70B, 405B) er optimalisert for flerspråklige dialoger og utkonkurrerer mange av de tilgjengelige åpne kildekodemodellene og lukkede chat-modellene på vanlige bransjereferanser[1](https://huggingface.co/meta-llama/Meta-Llama-3.1-405B-Instruct) Du kan få tilgang til fullførings-APIet her: [/chat/completions](https://Meta-Llama-3-1-405B-Instruct-nvn.eastus2.models.ai.azure.com/chat/completions) eller alternativt her: [/v1/chat/completions](https://Meta-Llama-3-1-405B-Instruct-nvn.eastus2.models.ai.azure.com/) Du kan få tilgang til fullførings-APIet her: [/chat/completions](https://Mistral-large-2407-kfedo.eastus2.models.ai.azure.com/chat/completions) eller alternativt her: [/v1/chat/completions](https://Mistral-large-2407-kfedo.eastus2.models.ai.azure.com/v1/chat/completions) [pris](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/000-000.mistral-ai-large-2407-offer?tab=PlansAndPrice): [pris](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/metagenai.meta-llama-3-1-405b-instruct-offer?tab=PlansAndPrice): ```
git clone https://github.com/HVL-ML/chat-ui
cd chat-ui
npm install
npm run dev -- --open
``` ```env
MODELS= `[{
  "name": "Meta-Llama-3-1-405B-Instruct",
  "displayName": "Meta-Llama-3-1-405B-Instruct",
 "chatPromptTemplate": "<s>[INST] <<SYS>>\n{{preprompt}}\n<</SYS>>\n\n{{#each messages}}{{#ifUser}}{{content}} [/INST] {{/ifUser}}{{#ifAssistant}}{{content}} </s><s>[INST] {{/ifAssistant}}{{/each}}",
  "endpoints": [{
      "type" : "openai",
      "baseURL": "https://Meta-Llama-3-1-405B-Instruct-nvn.eastus2.models.ai.azure.com/v1",
     "apiKey": "YOUR_API_KEY",
  }]},{
    "name": "Mistral-large-2407",
  "displayName": "Mistral-large-2407",
  "chatPromptTemplate": "<s>{{#each messages}}{{#ifUser}}[INST] {{#if @first}}{{#if @root.preprompt}}{{@root.preprompt}}\n{{/if}}{{/if}} {{content}} [/INST]{{/ifUser}}{{#ifAssistant}}{{content}}</s> {{/ifAssistant}}{{/each}}",
  "endpoints": [{
     "url": "https://Mistral-large-2407-kfedo.eastus2.models.ai.azure.com/v1",
     "type": "openai",
     "apiKey": "YOUR_API_KEY",
  }]
}]`
MONGODB_URL=mongodb://localhost:27017
``` 