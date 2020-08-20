# Lab 2 CodeDeploy Blue/green
* 延續Lab 1
* 改使用Blue/green deployment

### 架構圖
![Imgur](../img/cicd-workshop.png)


* CodeDeploy
	- create **`Application name`**: **`${user}-codedeploy-app`**
	- create **`Deployment group name`**: **`Blue-green`**
	- Service role ARN select **`Role-CodeDeploy`**
	- select **`Blue/green deployment`**
	- select **`Automatically copy Amazon EC2 Auto Scaling group`** choose **`${user}-workshop-asg`**
	- select **`Reroute traffic immediately`** and **`Terminate the original instances in the deployment group`**
	- Deployment configuration select **`CodeDeployDefault.OneAtATime`**
	- select **`Application Load Balancer or Network Load Balancer`**
	- choose a target group **`${user}-workshop-tg`**

* create deployment
	- Application: **`${user}-codedeploy-app`**
	- Deployment group: **`Blue-green`**
	- Repository type: **`My application is stored in Amazon S3`**
	- Revision location: **`s3://${user}-web-codedeploy/tutorial.zip`**
	- File type: **`.zip`**
	- Content options: **`Overwrite the content`**