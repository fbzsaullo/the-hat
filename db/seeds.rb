# Houses

House.create!(name: "Front-End") # 1
House.create!(name: "Back-End") # 2
House.create!(name: "Game Dev") # 3
House.create!(name: "Data Science") #4

# Questions | Front-End

Question.create!(question: "Pra mim, a parte mais importante de uma aplicação é o design.", house: House.find(1))

Question.create!(question: "Saber como funcionam elementos visuais de uma aplicação, como animações e efeitos, é mais interessante do que saber a lógica das suas funcionalidades.", house: House.find(1))

Question.create!(question: "Prefiro que o usuário possa ver e interagir diretamente com o resultado do meu trabalho.", house: House.find(1))

Question.create!(question: "Algumas aplicações são muito complexas e, às vezes, é preferível remover funcionalidades do que dificultar a interação do usuário.", house: House.find(1))


# Questions | Back-End

Question.create!(question: "Tenho facilidade em enxergar a lógica por trás das coisas.", house: House.find(2))

Question.create!(question: "Meu perfil é o de um solucionador de problemas.", house: House.find(2))

Question.create!(question: "Gostaria de ter o poder de transformar ideias em algo concreto.", house: House.find(2))

Question.create!(question: "Quero construir ferramentas que facilitem a vida ou resolvam dores das outras pessoas.", house: House.find(2))

# Questions | Game Dev

Question.create!(question: "Sou um grande entusiasta de games.", house: House.find(3))

Question.create!(question: "Costumo imaginar como os desenvolvedores pensam e incluem certas mecânicas em seus jogos.", house: House.find(3))

Question.create!(question: "Sou criativo e, além da programação, também me interesso por criação de personagens e mundos.", house: House.find(3))

Question.create!(question: "Consigo organizar minhas ideias e comunicá-las com clareza.", house: House.find(3))

# Questions | Data Science

Question.create!(question: "Me interesso pelo estudo de um negócio e assim poder sugerir melhorias a ele.", house: House.find(4))

Question.create!(question: "Gosto de mexer com planilhas do excel.", house: House.find(4))

Question.create!(question: "Prefiro mais as matérias de exatas, do que as outras.", house: House.find(4))

Question.create!(question: "Tenho habilidade com números e análise de gráficos e dados.", house: House.find(4))
