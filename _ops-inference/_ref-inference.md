
```bash
_experiment-Llama-3_3-Nemotron-Super-49B-v1() {
    _stopwatch curl -X POST http://localhost:11434/api/chat \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Llama-3_3-Nemotron-Super-49B-v1-virtuoso",
        "messages": [
        { "role": "user", "content": "Tell me about Canada." }
        ],
        "stream": false,
        "temperature": 0.04,
        "top_k": 7,
        "max_tokens": 2048
    }'
    echo
}
```

```bash
_experiment-Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual() {
    _stopwatch curl -X POST http://localhost:11434/api/chat \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Llama-3_3-Nemotron-Super-49B-GenRM-Multilingual-virtuoso",
        "messages": [
        { "role": "user", "content": "Tell me about Canada." },
        { "role": "assistant", "content": "Here is a brief fact about Canada:\n\nCanada is home to more lakes than any other country in the world, with over 2 million lakes covering about 8 % of its land area." },
        { "role": "assistant", "content": "Here is a brief fact about Canada:\n\nCanada has more lakes than any other country in the world, with over 2 million lakes covering about 8% of its land area." }
        ],
        "stream": false,
        "temperature": 0.04,
        "top_k": 7,
        "max_tokens": 2048
    }'
    echo
}
```







