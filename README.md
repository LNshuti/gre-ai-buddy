
### 🎓 **GREE AI Study Buddy:** AI Agent to Manage Preparing for the GRE

Welcome to the GREE AI Study Buddy project! This GitHub repository hosts an AI agent designed to assist users in preparing for the GRE (Graduate Record Examination). The GREE AI Study Buddy leverages artificial intelligence and natural language processing techniques to provide a personalized and interactive study experience for individuals aspiring to excel in the GRE.

### Features

The GREE AI Study Buddy offers a range of features to enhance your GRE preparation:

1. **Study Planning**: The AI agent helps you create a customized study plan based on your desired test date, available study hours per day, and specific areas of focus.

2. **Question Bank**: Access a vast collection of GRE practice questions across various topics and difficulty levels. The AI agent adapts the question selection based on your performance and areas of improvement.

3. **Intelligent Analytics**: The AI agent analyzes your performance on practice questions, identifies weak areas, and provides detailed insights and recommendations to help you improve your skills.

4. **Flashcards**: Review key concepts, vocabulary, and formulas with interactive flashcards designed to reinforce your knowledge and aid in memorization.

5. **Progress Tracking**: Keep track of your study progress, including the number of questions attempted, accuracy rates, and performance trends over time. The AI agent provides visualizations and reports to monitor your growth.

6. **Study Reminders**: Set personalized study reminders and notifications to help you stay on track with your study plan and maintain consistency.

### Technology Stack 

1. **Front End:**  Radix UI and Tailwind CSS
2. **Back End:** Rails 
3. **Database:** Supabase, DuckDb, Postgresql, DyanamoDB
4. **Deployment:** AWS 
5. **ML:** Python, Pytorch, Sklearn, Statsmodels


## Architecture 
 
* **AWS Fargate:** Serverless compute engine for containers that work with Amazon Elastic Container service and Amazon Elastic Kubernetes Services. 
* **FLYIO:** Hosting platform for distributed applications with API that manage global application deployments. 
* **Managed Database:** DyanamoDB or Pinecone or Weaviate


The application uses:
---------------------

**LLamaIndex** Data loaders to load pdf documents consisting of GRE study materials from drive. 

**Pinecone** to store embeddings of GRE study materials. 


![image](https://github.com/LNshuti/govgpt/assets/13305262/84a5db54-5385-4a23-9951-e916e6a25bc3)

### Contributing

Contributions to the GREE AI Study Buddy project are welcome! If you have any ideas, bug reports, or feature requests, please open an issue in the GitHub repository. We appreciate your feedback and contributions to make this study tool even better.

When contributing, please adhere to the following guidelines:

- Fork the repository and create a branch for your feature or bug fix.
- Ensure your code is well-documented and follows the existing coding style.
- Write unit tests for new features or modifications to existing code.
- Open a pull request, describing the changes you made and providing any relevant information.

### License

The GREE AI Study Buddy project is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute the codebase for personal or commercial purposes.

### References

The backend code is from Nat Friedman's Openplayground repo. 

## Coming Soon!

<div class="row" style="display: flex; justify-content: space-between; align-items: center;>
  <img width=30% src="logo/logo_transparent.png" alt="Logo"/> 
  <img width=30% src="design/IOS/Download_on_the_App_Store.svg" alt="Second image" style="order: 2;"/> 

</div>
