# Estudos em Machine Learning 📊🤖  

Repositório com experimentos, análises e comparações de algoritmos de **Machine Learning** em diversos datasets. Aqui você encontra:

- Algoritmos de classificação, regressão e clustering  
- Comparação de modelos e ajuste de hiperparâmetros  
- Aplicação da metodologia **CRISP-DM**  
- Análises exploratórias e código documentado  

---

## 📦 Como salvar seus arquivos com Docker

Para garantir que notebooks, modelos `.pkl` e outros arquivos criados no Jupyter sejam salvos na sua máquina, use volumes Docker:

1. **Crie uma pasta local** (ex: `notebooks/`).
2. **Construa a imagem:**
   ```sh
   docker build -t ml-jupyter .
   ```
3. **Rode o container montando a pasta:**
   ```sh
   docker run -p 8888:8888 -v "$(pwd)/notebooks":/home/jovyan/work ml-jupyter
   ```
4. **Acesse o Jupyter pelo navegador** (link no terminal).

Tudo que for salvo no Jupyter estará disponível na sua pasta local, inclusive arquivos em subdiretórios como `models/`.

> **Dica:** Use Git para versionar seus notebooks e adicione arquivos grandes ao `.gitignore` se necessário.

---

## 📚 Notebooks Disponíveis

| Tipo                      | Título                                                                 | Link do Binder                                                                                                                                         |
|---------------------------|------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| Classificação Multiclasse | Classificação Multiclasse com o Dataset Iris: Um Estudo Comparativo    | [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/lis-r-barreto/ml-case-studies/HEAD?urlpath=%2Fdoc%2Ftree%2Fnotebooks%2F01_classificacao_multiclasse_iris_estudo_comparativo.ipynb) |
