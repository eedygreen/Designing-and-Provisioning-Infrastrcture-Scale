# [Designing & Provisioning Infrastructure At Scale on AWS.](https://github.com/eedygreen/Designing-and-Provisioning-Infrastrcture-Scale)

**Content**

**This Project consist of Three Parts**

## [**Design The Infrastructure**](https://github.com/eedygreen/Designing-and-Provisioning-Infrastrcture-Scale/blob/master/Udacity_Diagram_1.pdf)

## **[Provisioning](https://github.com/eedygreen/Designing-and-Provisioning-Infrastrcture-Scale/tree/master/part-1-udacityT2M4) The Infrastructure**

## [Monitoring](https://github.com/eedygreen/Designing-and-Provisioning-Infrastrcture-Scale/blob/master/CloudWatch_Alarm.png) The Infrastructure



**Design**

- Part 1: Design Social Media Application for 50,000 Users
-  Part 2: Design Serverless Architecture for Developer

**Provision**

- Part 1: Provisioning Infrastructure with Terraform

- Part 2: Provisioning Serverless Architecture with Terraform

**Monitoring**

- Part 1: Financial Management

- Part 2: Budget Monitoring

  

[**Design**](https://github.com/eedygreen/Designing-and-Provisioning-Infrastrcture-Scale)

**Part 1**: The Infrastructure for a Social Media Application for 50,000 Users.

<img>![](/home/eedy/Pictures/50000 Social media Users.png) </img>	[50,000 Userse Infrastructure for Social Media Application](https://github.com/eedygreen/Designing-and-Provisioning-Infrastrcture-Scale/blob/master/Udacity_Diagram_1.pdf)

The Infrastructure for the Social Media Application was design with specific Budget rate, Security in mind, Availability, Recoverability and Resiliency. Instances and Database were carefully chosen to meet the demands in case of spike usage within the Budget cycle. Also, the EC2 instance (T3) and DynamoDb are selected for faster throughput.



**Part 2**: The Serverless Architecture for Application Development

<img>![](/home/eedy/Pictures/Serverless Architecture.png)</img>[Serverless Architecture Schematic for Application Developers](https://github.com/eedygreen/Designing-and-Provisioning-Infrastrcture-Scale/blob/master/Udacity_Diagram_2.pdf)

This Serverless Architecture was design for Developers from different region with required access to resources. The Serverless Infrastructure determines the access based on Developers' request.

***

[**Provision**](https://github.com/eedygreen/Designing-and-Provisioning-Infrastrcture-Scale/tree/master/part-1-udacityT2M4)

* Part 1: Provisioning Infrastructure on AWS Cloud Platform with Terraform

<img>![Terraform_1_1](/home/eedy/Design Provision and Monitor AWS Infrastructure at Scale/part-1-udacityT2M4/Terraform_1_1.png)</img>**Infrastructure Deployment with Terraform** 

- Part 2: Deploy AWS Lambda using Terrarform

Click [here](https://github.com/eedygreen/Designing-and-Provisioning-Infrastrcture-Scale/tree/master/part-2) to view the code.

***

[**Monitoring and Financial Management**](https://github.com/eedygreen/Designing-and-Provisioning-Infrastrcture-Scale/blob/master/CloudWatch_Alarm.png)

1. Part 1 : Initial [Cost Estimate for the Social Media Application](https://github.com/eedygreen/Designing-and-Provisioning-Infrastrcture-Scale/blob/master/Initial_Cost_Estimate.csv)  with limited budget.

   <img>![](/home/eedy/Pictures/initial estimate.png)</img>**Initial Estimate cost is $10,0312.32 per year on Budget target**

2. Part 2: I reduced the DynamoDb (Instance, I/o and backup storage) to achieve the reduced budget rate while maintaining normal operation. The reduction are; 
   -  Db instance-type, from dbr5.2xlarge to db r5.xlarge, 
   - 5000 I/O to 500 I/O
   - Backup storage, from 50,000GB to 5,000GB.

<img>![](/home/eedy/Pictures/Reduced cost.png)</img>**Reduced Estimate cost is $7,3736.28 per year with Budget target for $10,000.00**

3. Part 3: The increased budget to $300,000 per year.

<img>![](/home/eedy/Pictures/increased budget.png)</img>**Increased Estimate Cost**



**Summary**

The project was based on infrastructure design thinking and viewing the whole picture of the infrastructure as it scale with multiple users and limited budget. 

Cloud Architect is based on ***Designing of Infrastructure*** with ***Financial Planing***, ***Provisioning the Infrastructure*** with Infrastructure as Code (iac) and ***Monitoring the Infrastructure*** as it scale with daily demands on Availability, Recoverability and Resiliency.



[Designing & Provisioning Infrastructure At Scale on AWS.](https://github.com/eedygreen/Designing-and-Provisioning-Infrastrcture-Scale)