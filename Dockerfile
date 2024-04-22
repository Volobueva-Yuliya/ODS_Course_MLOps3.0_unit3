FROM mambaorg/micromamba

LABEL org.opencontainers.image.source=https://github.com/Volobueva-Yuliya/ODS_Course_MLOps3.0_unit3

WORKDIR /app

COPY environment_dev.yaml .
RUN micromamba create -n dev_mamba -f environment_dev.yaml --yes --quiet

COPY environment_prod.yaml .
RUN micromamba create -n prod_mamba -f environment_prod.yaml --yes --quiet

ENTRYPOINT ["micromamba", "run", "-n", "dev_mamba", "python", "app.py"]