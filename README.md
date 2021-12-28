# IBM Cloud Virtual Private Cloud (VPC) + NVIDIA GPU Profile

A Terraform script to provision an IBM Cloud VPC with 3 subnets and an IBM Cloud Virtual Server instance with 2 NVIDIA GPU v100. All subnets uses a CIDR block for each zone, such as 192.168.0.0/24, 192.168.64.0/24 and 192.168.128.0/24. Fork or import directly to your IBM Cloud Schematics workspace and override the values before generate plan and apply plan.

## LICENSE

Copyright 2022 Victor Shinya

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
