��    *      l  ;   �      �  $   �  %   �  /   �     $  2   ,  +   _  v   �  :     1   =  )   o     �     �  !   �  A   �  j     f   �     �  X   �  (   N     w  :   �     �  ]   �  :   0     k  ;   �  !   �     �  �  �  4   �
        %     
  A    L     d    z    �     �  �     `   �  �  �    �  #   �  &   �  +   $     P  1   X  1   �  s   �  <   0  5   m  %   �     �  
   �     �  =   �  m   7  i   �       a     (   ~     �  A   �     �  �   	  4   �  #   �  9   �  )     
   I  �  T  -   I     w  (   �    �    �     �    �    !  |   "  �   �"  `   #  �  {#                 '   )                     #         &                                                  (          
          "               !                	               *         %             $          API documentation and usage examples Authentication and security protocols Avaliable Models for testing on HVL Azure cloud Backend Clone the repo and install using npm, pnpm or bun: Configuration guidelines and best practices Create an .env.local in the root with the following information (Make sure to replace `YOUR_API_KEY` with a real key): Detailed instructions for accessing different LLM services Ensure consistent usage across projects and teams Facilitate onboarding of new team members Frontend Getting Started Getting started with hugging chat Information on deployment environments (e.g., cloud, on-premises) Input Tokens: $0.00533 per 1000 tokens Output Tokens: $0.016 per 1000 tokens Cost per 1m I/O tokens: $21.3 Input Tokens: $0.009 per 1000 tokens Output Tokens: $0.003 per 1000 tokens Cost per 1m I/O tokens: $11 Introduction Let's leverage our collective knowledge to drive innovation and excellence in AI at HVL! Make sure a mongodb instance is running: Meta Llama 3.1 Meta Llama 3.1 is deployed and accessible at this address: Mistral Large V2 Note that you will need a key to access these APIs. You can aquire a key by contact an admin. Provide clarity on deployment locations and configurations Purpose of This Documentation Serve as a reference for best practices and troubleshooting Streamline access to LLM services Summary The Meta Llama 3.1 collection of multilingual large language models (LLMs) is a collection of pretrained and instruction tuned generative models in 8B, 70B and 405B sizes (text in/text out). The Llama 3.1 instruction tuned text only models (8B, 70B, 405B) are optimized for multilingual dialogue use cases and outperform many of the available open source and closed chat models on common industry benchmarks.[1](https://huggingface.co/meta-llama/Meta-Llama-3.1-405B-Instruct) The primary objectives of this documentation are to: This documentation covers: Troubleshooting tips and known issues We encourage all team members to familiarize themselves with this documentation and to contribute to its ongoing improvement. If you notice any discrepancies or have suggestions for additions, please don't hesitate to reach out to the documentation maintenance team. Welcome to the internal documentation for the Artificial Intelligence (AI) group at HVL. This comprehensive guide is designed to provide our team members with essential information about accessing and utilizing various Large Language Model (LLM) services within our organization. What You'll Find Here You can access the completions api here: [/chat/completions](https://Meta-Llama-3-1-405B-Instruct-nvn.eastus2.models.ai.azure.com/chat/completions) or alternatively here: [/v1/chat/completions](https://Meta-Llama-3-1-405B-Instruct-nvn.eastus2.models.ai.azure.com/) You can access the completions api here: [/chat/completions](https://Mistral-large-2407-kfedo.eastus2.models.ai.azure.com/chat/completions) or alternatively here: [/v1/chat/completions](https://Mistral-large-2407-kfedo.eastus2.models.ai.azure.com/v1/chat/completions) [pricing](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/000-000.mistral-ai-large-2407-offer?tab=PlansAndPrice): [pricing](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/metagenai.meta-llama-3-1-405b-instruct-offer?tab=PlansAndPrice): ```
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
 API-dokumentasjon og brukseksempler Autentiserings- og sikkerhetsprotokoll Modeller som kan testes på HVL Azure-skyen Backend Klon repoen og installer med npm, pnpm eller bun: Retningslinjer for konfigurasjon og beste praksis Opprett en .env.local i roten med følgende informasjon (sørg for å erstatte `YOUR_API_KEY` med en ekte nøkkel): Detaljerte instruksjoner for tilgang til ulike LLM-tjenester Sikre konsistent bruk på tvers av prosjekter og team Lette onboarding av nye teammedlemmer Frontend Kom i gang Kom i gang med Hugging Chat Informasjon om distribusjonsmiljøer (f.eks. sky, på stedet) Input tokens: $0,00533 per 1000 tokens Output tokens: $0,016 per 1000 tokens Kostnad per 1m I/O tokens: $21,3 Input tokens: $0,009 per 1000 tokens Output tokens: $0,003 per 1000 tokens Kostnad per 1m I/O tokens: $11 Introduksjon La oss utnytte vår kollektive kunnskap for å drive innovasjon og fremragenhet innen AI ved HVL! Sørg for at en mongodb-instans kjører: Meta Llama 3.1 Meta Llama 3.1 er distribuert og tilgjengelig på denne adressen: Mistral Large V2 Merk at du trenger en nøkkel for å få tilgang til disse API-ene. Du kan skaffe deg en nøkkel ved å kontakte en administrator. Gi klarhet om distribusjonssteder og konfigurasjoner Formålet med denne dokumentasjonen Fungere som en referanse for beste praksis og feilsøking Effektivisere tilgangen til LLM-tjenester Sammendrag Meta Llama 3.1-samlingen av flerspråklige store språkmodeller (LLM-er) er en samling av forhåndstrenede og instruksjonsinnstilte generative modeller i størrelsene 8B, 70B og 405B (tekst inn/tekst ut). Llama 3.1-instruksjonsjusterte tekstmodeller (8B, 70B, 405B) er optimalisert for flerspråklige dialoger og utkonkurrerer mange av de tilgjengelige åpne kildekodemodellene og lukkede chat-modellene på vanlige bransjereferanser[1](https://huggingface.co/meta-llama/Meta-Llama-3.1-405B-Instruct) Hovedmålene med denne dokumentasjonen er å: Denne dokumentasjonen dekker: Tips for feilsøking og kjente problemer Vi oppfordrer alle teammedlemmer til å gjøre seg kjent med denne dokumentasjonen og til å bidra til dens kontinuerlige forbedring. Hvis du oppdager uoverensstemmelser eller har forslag til tilføyelser, ikke nøl med å ta kontakt med dokumentasjonsvedlikeholdsteamet. Velkommen til den interne dokumentasjonen for Artificial Intelligence (AI)-gruppen ved HVL. Denne omfattende guiden er utformet for å gi våre teammedlemmer essensiell informasjon om tilgang til og bruk av ulike Large Language Model (LLM)-tjenester innenfor vår organisasjon. Hva du finner her Du kan få tilgang til fullførings-APIet her: [/chat/completions](https://Meta-Llama-3-1-405B-Instruct-nvn.eastus2.models.ai.azure.com/chat/completions) eller alternativt her: [/v1/chat/completions](https://Meta-Llama-3-1-405B-Instruct-nvn.eastus2.models.ai.azure.com/) Du kan få tilgang til fullførings-APIet her: [/chat/completions](https://Mistral-large-2407-kfedo.eastus2.models.ai.azure.com/chat/completions) eller alternativt her: [/v1/chat/completions](https://Mistral-large-2407-kfedo.eastus2.models.ai.azure.com/v1/chat/completions) [pris](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/000-000.mistral-ai-large-2407-offer?tab=PlansAndPrice): [pris](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/metagenai.meta-llama-3-1-405b-instruct-offer?tab=PlansAndPrice): ```
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