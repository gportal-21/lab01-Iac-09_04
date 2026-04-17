# Despliegue

Vamos a utilizar terraform.
Lo primero es habilitar los proveedores, desde la carpeta donde se encuentra terraform

```
cd iac
```

```
terraform init
```

## Crear workspaces

```
terraform workspace new dev
```

```
terraform workspace new localhost
```

## Crear contenedores en cada workspace

```
terraform workspace select dev
```

```
terraform apply
```

"Escribir yes para aceptar creacion"

```
terraform workspace select localhost
```

```
terraform apply
```

"Escribir yes para aceptar creacion"

Deben documentar como crear los ambientes y seleccionar los ambientes

terraform.tfvars:

```
web_port = {
    localhost = 4001
    dev       = 5001
}

api_port = {
    localhost = 4002
    dev       = 5002
}

db_port = {
    localhost = 4003
    dev       = 5003
}

db_password = {
    localhost = "localhost"
    dev       = "dev"
}

api_url = {
    localhost = "http://api-localhost:4002"
    dev       = "http://dev-localhost:5001"
}
```
