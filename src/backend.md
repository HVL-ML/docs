# Avaliable Models for testing on HVL Azure cloud

Note that you will need a key to access these APIs. You can aquire a key by contact an admin. 

## Meta Llama 3.1
The Meta Llama 3.1 collection of multilingual large language models (LLMs) is a collection of pretrained and instruction tuned generative models in 8B, 70B and 405B sizes (text in/text out). The Llama 3.1 instruction tuned text only models (8B, 70B, 405B) are optimized for multilingual dialogue use cases and outperform many of the available open source and closed chat models on common industry benchmarks.[1]

Meta Llama 3.1 is deployed and accessible at this address:

```bash
https://Meta-Llama-3-1-405B-Instruct-nvn.eastus2.models.ai.azure.com
```

You can access the completions api here: [/chat/completions](https://Meta-Llama-3-1-405B-Instruct-nvn.eastus2.models.ai.azure.com/chat/completions) or alternatively here: [/v1/chat/completions](https://Meta-Llama-3-1-405B-Instruct-nvn.eastus2.models.ai.azure.com/)

### [pricing](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/metagenai.meta-llama-3-1-405b-instruct-offer?tab=PlansAndPrice): 

> Input Tokens: $0.00533 per 1000 tokens
> Output Tokens: $0.016 per 1000 tokens
> Cost per 1m I/O tokens: $21.3

## Mistral Large V2

```bash
https://Mistral-large-2407-kfedo.eastus2.models.ai.azure.com
```
You can access the completions api here: [/chat/completions](https://Mistral-large-2407-kfedo.eastus2.models.ai.azure.com/chat/completions) or alternatively here: [/v1/chat/completions](https://Mistral-large-2407-kfedo.eastus2.models.ai.azure.com/v1/chat/completions)

### [pricing](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/000-000.mistral-ai-large-2407-offer?tab=PlansAndPrice): 

> Input Tokens: $0.009 per 1000 tokens
> Output Tokens: $0.003 per 1000 tokens
> Cost per 1m I/O tokens: $11

[1]: https://huggingface.co/meta-llama/Meta-Llama-3.1-405B-Instruct

