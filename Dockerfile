FROM mambaorg/micromamba

WORKDIR /ODS_Course_MLOps3.0_unit3

COPY environment_dev.yaml .
RUN micromamba create -n dev_mamba -f environment_dev.yaml --yes --quiet

COPY environment_prod.yaml .
RUN micromamba create -n prod_mamba -f environment_prod.yaml --yes --quiet

ENTRYPOINT ["micromamba", "run", "-n", "dev_mamba", "python", "app.py"]
ENTRYPOINT ["micromamba", "run", "-n", "prod_mamba", "python", "app.py"]
