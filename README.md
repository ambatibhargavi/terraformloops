#Terraform Snowflake User Creation with Loops
This Terraform project automates the creation of Snowflake users using a loop-based approach (for_each). By leveraging this feature, we can efficiently manage and provision multiple users in Snowflake without code duplication. Each user is customized with specific attributes like password, default warehouse, role, and namespace.

Features
Automated Snowflake user creation using Terraform
Simplified code using loops (for_each)
Customizable user attributes (password, warehouse, role, namespace)
Scalable and easy to maintain
Prerequisites
Terraform (v1.0.0 or later)
Snowflake Account with account admin privileges
A Snowflake role with sufficient privileges to create users
Getting Started
1. Clone the Repository
2. Configure Terraform
3. Customize User Data
4. Initialize and Apply Terraform

Project Structure
main.tf: Contains the Snowflake provider and resources for user creation.
variables.tf: Defines the variables for user attributes such as password, warehouse, role, and namespace (if separated).

Variables
users: A map of user configurations. Each key is the user name, and the value is an object containing the password, default warehouse, default role, and default namespace.

Contributing
Feel free to submit pull requests to improve or add new features.

Contact
For any questions or suggestions, please reach out to me at:

Email: ambatibhargavi977@gmail.com
LinkedIn: https://www.linkedin.com/in/ambatibhargavi/
GitHub: ambatibhargavi
![Untitled design](https://github.com/user-attachments/assets/c2c0ac6a-1d1b-4596-b7b0-f3a2e589e6b8)
![SnowFlake](https://github.com/user-attachments/assets/129e11f9-d16e-4e88-9f9d-8cca5fc645e9)
![Credentials](https://github.com/user-attachments/assets/e9c104b8-d098-45d6-8bce-3eddd18804e0)
