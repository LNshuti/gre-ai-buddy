from llama_hub.file.base import SimpleDirectoryReader

# other way of loading
# from llama_index import download_loader
# SimpleDirectoryReader = download_loader("SimpleDirectoryReader")

loader = SimpleDirectoryReader('./data', recursive=True, exclude_hidden=True)
documents = loader.load_data()


from llama_hub.file.base import SimpleDirectoryReader
from llama_index import GPTVectorStoreIndex

# other way of loading
# from llama_index import download_loader
# SimpleDirectoryReader = download_loader("SimpleDirectoryReader")

loader = SimpleDirectoryReader('./data', recursive=True, exclude_hidden=True)
documents = loader.load_data()
index = GPTVectorStoreIndex.from_documents(documents)
index.query('What are these files about?')

from llama_hub.file.base import SimpleDirectoryReader
from llama_index import GPTVectorStoreIndex
from langchain.agents import initialize_agent, Tool
from langchain.llms import OpenAI
from langchain.chains.conversation.memory import ConversationBufferMemory

# other way of loading
# from llama_index import download_loader
# SimpleDirectoryReader = download_loader("SimpleDirectoryReader")

loader = SimpleDirectoryReader('./data', recursive=True, exclude_hidden=True)
documents = loader.load_data()
index = GPTVectorStoreIndex.from_documents(documents)

tools = [
    Tool(
        name="Local Directory Index",
        func=lambda q: index.query(q),
        description=f"Useful when you want answer questions about the files in your local directory.",
    ),
]
llm = OpenAI(temperature=0)
memory = ConversationBufferMemory(memory_key="chat_history")
agent_chain = initialize_agent(
    tools, llm, agent="zero-shot-react-description", memory=memory
)

output = agent_chain.run(input="What are these files about?")