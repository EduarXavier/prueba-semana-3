# prueba-semana-3

- Creación del namespace:

![punto 1 - yaml](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/c11fae71-42ac-4388-9207-fbc164e8df94)

- aplicación del namespace:

![punto1 - apply](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/8a8a73f2-643f-4e28-868b-d8501bb521ec)

- validación del namespace:

![punto 1 - validadicon](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/0ba59760-1a9b-45bf-9b2e-b639b2a1a451)

- Creación del Dockerfile para el uso del api (Despues de la creación de la imagen se subió a mnikube con el comando --- minikube image load backen-prueba2 ---
  
![Creación del dockerfile](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/dd911aa0-71c2-40f2-85aa-4cbbbec90d98)

(La estructura del api es: )

![api php](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/550a02bb-1ff6-4070-8b09-27de92281f7d)

(Endpoint del api:)

![image](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/76939846-9f1c-40a9-b94c-256f1294ed7b)

- Despues de crear la imagen, creamos el deployment:

![deployment backend](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/f88ab6e5-6306-43eb-a6ea-3cc2989bd66d)

- Ahora hacemos el servicio:

![back service](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/02542584-4547-4533-ba4a-83550f127aac)

- Ya teniendo el servicio creamos el configMap:

![configmap](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/85d441c8-1a8e-4a7b-9b2e-df19b57d2d7a)

- Despues se crea el StatefulSet de la base de datos:

![statefulset](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/71b736a4-78d1-469f-aefc-996e2d3abe5a)

- Creamos los serviccios de labd:

![db service](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/85022a25-1d10-49d3-9aa3-445ed13aa297)

- Ahora creamos los secretos:

![secret](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/6404597c-5033-4169-98d9-dd12da0b8260)

- Y faltan los volumenes para la persistencia de datos:

![pv - pvc](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/f26702d0-c3c2-4cfd-8570-941fc3c6b987)

- Aplicamos los cambios al nodo:

![image](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/a011a839-d713-4a98-8164-91661ec89309)

- Verificamos los servicios:

![image](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/1326e75c-9d78-4d7c-baee-cecbe439a88d)

- verificamos los pods:

![image](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/388adb96-88d4-4f1e-a28d-527330c82e01)

- verificamos el stateFulSet

![image](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/d5c3a4bc-3319-424a-bad4-eeaf09f08220)

- verificamos el deployment:

![image](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/0e45ab66-0201-4d99-a957-ce809c9a371b)

- Ahora ingresamos al pod del backend y mediante curl hacemos la petición a uno de los endpoints:

  ![prueba votos](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/ad4efdf8-2f83-405d-8c55-3eb17e698320)

- Ahora queremos ver si se guardó el voto que enviamos:

  ![prueba ver votos](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/0791a608-213d-4424-a48e-838456e7c344)

- Ahora verificamos en la BD si realmente existe esta data y se hizo la comunicación:

  ![comprobacion sql](https://github.com/EduarXavier/prueba-semana-3/assets/142350836/9994d836-885f-4bb8-b664-c7bb0b68df54)

