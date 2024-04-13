# ODS Course MLOps 3.0 and production
## Project "Unit_3"

The goal of the project is to prepare a Docker image and run it.

### Instructions:
1. Clone the repository:  
```git clone https://github.com/Volobueva-Yuliya/ODS_Course_MLOps3.0_unit3.git```
2. Build the Dockerfile.  
```docker build . -t <name_image>```
4. Run the Dockerfile.  
```docker run --name <container> --rm -u 0 -v <absolute_path/ODS_Course_MLOps3.0_unit3>:/app <name_image>```
