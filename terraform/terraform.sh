#Create Dataflow Templates Bucket
echo "--------------------------------------"
echo "Create Dataflow Template Bucket"
echo "--------------------------------------"
cd resources/cloud-storage/dataflow-template
rm backend.conf
ln -s ../../../backend.conf backend.conf
terraform init -backend-config=backend.conf
terraform plan
terraform apply --auto-approve

#Create Pubsub
echo "--------------------"
echo "Create Pubsub"
echo "--------------------"
cd ../../pubsub
rm backend.conf
ln -s ../../backend.conf backend.conf
terraform init -backend-config=backend.conf
terraform plan
terraform apply --auto-approve

#Create Spanner
echo "--------------------"
echo "Create Spanner"
echo "--------------------"
cd ../spanner
rm backend.conf
ln -s ../../backend.conf backend.conf
terraform init -backend-config=backend.conf
terraform plan
terraform apply --auto-approve

#Create VPC
echo "--------------------"
echo "Create VPC"
echo "--------------------"
cd ../vpc
rm backend.conf
ln -s ../../backend.conf backend.conf
terraform init -backend-config=backend.conf
terraform plan
terraform apply --auto-approve

#Create Subnets
echo "--------------------"
echo "Create Subnets"
echo "--------------------"
cd ../subnets
rm backend.conf
ln -s ../../backend.conf backend.conf
terraform init -backend-config=backend.conf
terraform plan
# terraform apply --auto-approve



