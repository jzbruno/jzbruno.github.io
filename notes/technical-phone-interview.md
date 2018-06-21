# Technical Phone Interview Notes

## Overview

The phone screen should be used to determine if the candidate should be brought into the office to 
interview with the team. The interview should be conducted by a senior team member with good 
understanding of technical concepts.

The goal is to quickly rule out candidates that do not fit the requirements of the position 
technically and rule out candidates that do not show interest in the position. This applies to both
FTE and contractor candidates, we don't want uninterested candidates in either situations.

Technical questions should be specific to the level and responsibilities of the position being 
interviewed for. If specific experience isn't available questions should be asked that are related 
to interviewee's experience.

## Position responsibilities, experience, and priorities

These questions should be asked to determine if the interview should continue. They determine if 
the candidate is interested in the position and has the right attitude for the team.

**Have you been told about the position?**

> A lot of the time the candidate has only seen the position requirements and has not been told
details about the team or project. This is a good time to explain those details. This should be
specific to the project or team being interviewed for.

**What are you looking to work on? Does this sound like something you want to work on?**

> Trying to determine if the candidate is interested in the work or is it just a job. Helps to get 
a sense of how they will be to work with.

**Give an overview of yourself. What would you like to highlight or want me to know?**

> This is the standard question to get a sense for their experience. Look for level of involvement 
in projects listed on their resume. Did they help design and develop or were they just on the team?

**What side projects are you working on? How do you stay up-to-date on the industry?**

> Again, trying to determine if the candidate is interested in the work or is it just a job. Helps 
to get a sense of how they will be to work with.

## Technical: AWS

These questions identify some very basic AWS knowledge. If the candidate cannot easily answer these 
questions they do not have very strong AWS knowledge.

**if i am trying to connect to an aws instance over ssh and am getting a connection timeout what 
would you do to troubleshoot?**

>

**if i am trying to connect to an external website from an ec2 instance and am getting a connection 
timeout what would you do to troubleshoot?**

>

**if i have an external facing n-tier application deployed to aws what are some ways to secure the 
application**

>

**if i have an internal facing n-tier application deployed to aws what are some ways to secure the 
application**

>

## Technical: Azure

These questions identify basic Azure knowledge and the basic knowledge of the differences between 
the two clouds. If the candidate has Azure on their resume and AWS on their resume they should be 
able to answer these questions easily.

**Describe the difference between AWS VPCs and Azure VNets.**

> 

**Describe the difference between AWS security groups and Azure network security groups**

> 

**Describe the difference between AWS account structure and Azure account structure**

>

## Technical: Terraform

These questions help identify if a candidate has a good understanding of basic Terraform life cycle
management and operation. If Terraform is listed on the candidate's resume they should be able to
answer these questions easily.

**How would you use Terraform to manage existing cloud infrastructure? What are some of the steps you 
would take?**

> Expect an answer that mentions terraform import command. Should talk about need to create resource 
definitions for imported resources. More advanced users will know that import is no longer allowed 
without a basic resource definition and that is because previously a user could import then apply 
without the resource definition then accidentally delete resources.

**How can multiple members of a team manage the same infrastructure defined by Terraform?**

> Expect an answer that mentions Terraform remote state. More advanced Terraform users will mention 
different backends and locking capabilities.

**If I delete an instance in AWS and then run terraform apply what will happen?**

> Expect an answer that mentions Terraform will try to re-create the deleted instance. More advanced 
Terraform users will ask if a Terraform resource definition exists for the instance before answering.

**If I remove a resource definition from Terraform config and run terraform apply, what will happen?**

> Expect an answer that mentions the resource will be deleted.

**If I import an instance using terraform import and without creating a resource definition in a config 
file, I run terraform apply, what will happen?**

> Expect an answer that mentions the instance will be deleted. More advanced users will say Terraform 
will return an error saying the resource definition doesn't exist during import, this is the new 
behavior. Advanced users may mention that the check can be disabled.
