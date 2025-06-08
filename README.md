# Estudos em Machine Learning 📊🤖  

Este repositório reúne experimentos, análises e comparações de diferentes algoritmos de **Machine Learning**, aplicados a diversos **datasets**. O objetivo é explorar técnicas de aprendizado de máquina, avaliando modelos e suas métricas de desempenho em diferentes cenários.  

## 📌 O que você encontrará aqui:
- Implementações de algoritmos de **classificação, regressão e clustering**  
- Comparação de modelos e ajuste de hiperparâmetros  
- Aplicação da metodologia **CRISP-DM** para estruturação dos estudos  
- Análises exploratórias de datasets públicos  
- Código bem documentado e explicações sobre os experimentos  

Este repositório é um espaço de aprendizado contínuo e aprimoramento das habilidades em ciência de dados e aprendizado de máquina. 🚀  

📢 **Contribuições e feedbacks são bem-vindos!**  

---

## 📦 Persistência de Dados com Docker: Montando Volumes

Para garantir que todos os arquivos criados ou modificados nos notebooks (incluindo modelos `.pkl`, datasets e anotações) sejam salvos diretamente na sua máquina, utilize o recurso de **volumes do Docker** ao executar o container Jupyter.

### Por que usar volumes?

- **Persistência:** Tudo que você salvar no Jupyter estará disponível na sua pasta local, mesmo após parar ou remover o container.
- **Facilidade:** Não é necessário baixar manualmente arquivos do container.
- **Integração:** Você pode editar arquivos tanto pelo Jupyter quanto pelo seu editor local.
- **Backup e versionamento:** Facilita o uso de ferramentas como Git para versionar seus notebooks e modelos.

### Como montar o volume

1. **Escolha uma pasta local** para armazenar seus notebooks e arquivos (exemplo: `notebooks/`).

2. **Execute o container com o parâmetro `-v`:**

   ```sh
   docker run -p 8888:8888 -v "$(pwd)/notebooks":/home/jovyan/work minha-imagem-jupyter
   ```

   - `$(pwd)/notebooks` é o caminho local da sua pasta de trabalho.
   - `/home/jovyan/work` é o diretório de trabalho padrão do Jupyter dentro do container.
   - `minha-imagem-jupyter` é o nome da imagem Docker que você construiu.

3. **Acesse o Jupyter Notebook** pelo navegador usando o link fornecido no terminal.

4. **Todos os arquivos criados ou modificados** no Jupyter aparecerão automaticamente na sua pasta local, incluindo modelos salvos em subdiretórios como `models/`.

---

---

### Exemplo prático

1. **Construa a imagem Docker:**

   ```sh
   docker build -t minha-imagem-jupyter .
   ```

2. **Execute o container montando sua pasta local:**

   ```sh
   docker run -p 8888:8888 -v "$(pwd)/notebooks":/home/jovyan/work minha-imagem-jupyter
   ```

Agora, qualquer notebook, dataset ou arquivo `.pkl` salvo no Jupyter estará disponível em `notebooks/` no seu computador.  
Se o seu código salva modelos em `models/`, eles aparecerão em `notebooks/models/`.

---

> **Dica:**  
> Para compartilhar ou versionar seus notebooks e modelos, utilize o Git normalmente na sua pasta local.
> 
> Para manter seu ambiente limpo, lembre-se de adicionar arquivos grandes ou sensíveis ao `.gitignore` se necessário.

---
