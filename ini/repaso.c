/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: XJINX
 *
 * Created on 1 de enero de 2013, 1:44
 */

#include <stdio.h>//libreria principal;
#include <stdlib.h>//sirve para agregar comandos a la principal;
#include <string.h>//sirve para trabajar con cadenas
#include <math.h>//sirve para agragar comandos matematicos mas complejos
#define TAM 15//variable definida para todo el programa
/*
 * 
 */
 
int global=0;// una  variable global pero actualmente se toma como una mala practica por el mal uso de la memoria
void burbuja(long int *x,int *y);//metodo de la burbuja en una funcion
int * muestra(int v[],long int x,int **p);

int main(int argc, char** argv) {//funcion principal;
     
//-----------------Declaracion de variables--------------------------    

    long x;//es igual a los enteros pero con mas capacidad;=decimal
    int y=1,i=0,j=0;//tipo entero: 8, -9, 10 16bits -32768 hasta 32767 2^16;=decimal
    int vector[TAM]= {9,8,7,6,5,4,3,2,1,0};//declaracion de vector
    int *p=NULL,*ptr=NULL;//declaracion de entero ejemplo ejercicio 5;
    float f1=5.46; //flotante: 1.53, 5.64, 5 32bits 2^32;=float
    double f2=19.8; //flotante: 64bits 2^64
	char n; //tipo char o craracter: 'a', 4 //(no entiende el 4);=character
    char s[TAM],info[100];	//char ejemplo con cadenas, es vectorial en el [] esta la capacidad;=string
    char *str = "stuff";//'\0' puede significar el final de cadena
    
    printf("\t\t Menu de repaso\n\t Repaso_0\n\t Repaso_1\n\t Repaso_2\n\t Repaso_3\n\t Repaso_4\n\t Repaso_5\n\t");//comando para un printf("muestra en pantalla");
    scanf("%c",&n);
    
    switch(n){//switch estructura condicional mayor mente utilizada para menus;	
    	case '0'://se declaran las condiciones del switch poniendo el case y luego el numero o simbolo para rediriguirlo a ese en expecifico, En este caso es '1' por que es tipo char;	
		
		//------------------Entrada y Salida de datos----------------------------
			
		    /*
		    Entrada:
		    
		    %d || %i =decimal
		    %c=character
		    %s=string 
		    %f=float
		    %x=hexadecimal
		    
		    salida:
		    
		    entre el % y el tipo de variable se puede poner la cantidad de digitos que quieres que tenga la variable 
		    %d=decimal
		    %c=character
		    %s=string 
		    %f=float
		    %x=hexadecimal
		    %e = scientific notation
		    */
		    system("cls");//system("cls") comando para limpieza de la pantalla; 
		    n = y;// tranformacion de varible de numero a int a tipo char o mejor conocido como codigo ASCII
		    printf ("valor de n: %c.\nIngrese el nuevo: ",n);//\n para hacer un salto de linea 
			fflush(stdin);//fflusch comando para limpiar el buffer y tener una entrada de datos sin trafico;
		    n = getchar();//escaneo de un caracter o char
		    printf ("\rchar n: %c. ",n);// \r para reescribir la linea 
		    putchar(n);//comando para mostrar en pantalla un caracter solamente 		    
		    
		    printf("\n \blong,float,char\n");// \b para retroceder un espacio
		    fflush(stdin);
		    scanf("%4d  %6f  %c",&x,&f1,&n);//scanf escanea ejemplo %c=char, %f=float, %d=entero; pueden agregar diversas formas de entrada de datos 
	   		printf("long x: %d.\nfloat f1: %f.\nchar n: %c.\n",x,f1,n);
		    /*
		    strlen() = catidad de letras del array
		    strcat() = unir dos string
		    strcpy() = copia un string a otro
		    srtlwr() = convierte string a minusculas 
		    strupr() = convierte string a mayusculas 
		    strrev() = reverse string
		    strcmp() = compare dos string
		    */
	   		//printf("int,string\n");
	   		fflush(stdin);
	   		//sscanf(info,"%s %d",s,&y);//el string solo puede tomar una palabra
	   		//system("pause");
		    printf ("int y: %i.\ndouble f2: %f.\nString s: %s",y,f2,s);
		    
		    printf("\n\astring: ");// \a para hacer un pequeño sonido
		    fflush(stdin);
		    gets(s);//comando para escanear una o varias cadena o string
		    printf ("String s: %s = %d. ",s,strlen(s));//strlen es la cantidad de letras en el array o vector
		    puts(s);//comando para mostrar en pantalla un string solamente 
		    
		    printf("string fgets: ");
		    fgets(s,TAM,stdin);//escanea varios string hasta 15 elementos y limpia el buffer al mismo tiempo tambien es mas seguro
		    fputs(s,stdout); 
		    sprintf(info,"string %s%d",s,strlen(s));
		    printf("%s\n",info);
		    /* 
		    \t es para realizar un tabulario mejor conocido como un espacio mediano 
			\\para hacer la barra 
			\' para comillas simples 
			\"para comillas dobles
			*/
		    printf("Simbolos= \t \\ \t \' \t \"\n");
		   	system ("pause");//comando para pausar el programa
		   	
	    break;//aqui es donde se rompe el primer caso el break se usa para que no lea el siguiente caso al menos que utilice el simbolo adecuado para el segundo caso;
		
		case '1':
			
		//--------------------operaciones matematicas-------------------------------
			
			/*
			"+"
			"-"
			"*"
			"/"
			"%"
			"x=pow(y,x)"
			"x=sqrt(x)"
			*/
			system("cls");
			x=y=2;//forma eficiente de declarar variables con el mismo valor
			x +=y;// x=x + y;
		    printf ("sum x : %i.\n",x);
		    x= x - y;
		    printf ("res x : %i.\n",x);
		    printf ("multi x : %i.\n",x*y);//En los printf tambien se pueden hacer procesos matematicos simples;
		    x=(float)x / y;
		    printf ("divi x : %i\n",x);
		    x= pow (y,x);//x^y
		    printf ("elev x : %i\n",x);
		    x= sqrt (x);//raiz de x
		    printf ("raiz x : %i\n",x);
		    x=x % x;//porcentaje
		    printf ("porc x : %i\n",x);
		    
		    x=rand()%10+1;
			/*
			rand= sirve para guardar numeros al azar 
			se escribe el ()% y luego el numero maximo que se quiera dar 
			a continuacion se le suma + el numero minimo que se le quiera dar
		    */
		    
		    //operadores de incremento
			x=y++;//asigna un valor x y despues suma y
		    printf ("incrementa x : %i\n",x);
		    x=--y;//decrementa y despues asigna un valor x
		    printf ("decrementa x : %i \n",x);
		    system ("pause");
		    
    	break;
    	
    	case '2':
    		
    	//----------------------Estructura condicional--------------------------
			/*
			"=="igual ,
			"<"menor ,
			"<="menor igual ,
			">"mayor ,
			">="mayor igual,
			"!=" diferente,
			"&&" y,
			"||" o.
			*/
			y=1;    
		    do {//bucle tipo do while este bucle en particular tiene una condicion que al menos una vez entra en el bucle;
		    	system("cls");
		        printf("introdusca un numero entre 1 y 10 y este entre 98 o 99: ");
		        scanf("%i",&x);
		        
		        if (x>=1 && x<=10) {//condicion if funciona para que solo pueda entrar a esa parte del programa si cumple con lo escrito entre parentecis();
		            printf("\nel numero %i esta entre 1 y 10\n",x);
		        } else {//el else se usa junto con el if se da a entender el la condicion del else es todo lo contrario a la del if que este detras de ella;
		            printf("\nel numero NO esta entre 1 y 10\n");
		        }
		        if (!(x==98 || x==99)) {
		            printf("\nel numero NO es 98 o 99\n");
		        } else {
		            printf("\nel numero %i es 98 o 99\n",x);
		        }
		        int s=(x==y)? 1 : 0;
			    printf("%d ",s);
			    if(x)// si pones una varible sola y el numero es diferente de zero se considera verdadero 
			    	printf("es valido");
			    	
		        printf("\nquiere introducir otro numero? .\n\n");
		        fflush(stdin);
		        n=tolower(getchar());//tolower= el simbolo escanea se lee siempre como minuscula; 
		    } while(n!='.');//sierre  del bucle do while con una condicion char en esta caso;
		    
		break;
		
		case '3':
		
		//-----------------------Bucles-----------------------------------
		
			system("cls");
			//for(initvalue;condition;increment){ se pueden iniciar la cantidad de variables que quieras y igual con los incrementos
			for(i = 0,x=123456789; x!=0; i++ ) {
				/*
				entena= num1/100%10;
        		decena= num1/10%10;
        		unidad= num1%10;
        		*/
				vector[i]=x%10;//un vector es como tener una lista de varibles
				x/=10;
	            printf("bucle for: %d,\n ",vector[i]);
	        }
			i--;
			x=5;
    
    		while (x>0){
				x --;
				if(x==3)
					continue;//el resto des bucle se omite y reicia manteniendo los datos
					
				printf("bucle while: %d\n",x);
			}
		break;
		
		case '4':
		
		//--------------------------Funciones-------------------------------
		
			do {
				system("cls");
				printf("Ingrese 2 datos x y:\n");
				fflush(stdin);
				scanf("%d %d",&x,&y);
				printf("factorial de %d es %d\n",x,factorial(x));
				burbuja(&x,&y);
				printf("burbuja x=%d y=%d\n",x,y);
				printf("\nsalir con .\n\n");
		        fflush(stdin);
		        n=tolower(getchar());
			} while(n!='.');
		break;
		
		case '5' :
		
		//-----------------------Uso de memoria------------------------------
		
			do{
				system("cls");
				/*
				Puntero 
				tipo_puntero *identificador; 
				*/
				x=10;
				p=&x;//asignacion 
				printf("dereccion: x = %x, puntero = %x\n",&x,p);
				printf("valor: x = %d, puntero = %d\n",x,*p);
				ptr=vector;
				for(i=0;i<TAM-10;i++){
					vector[i]=i;
					printf("la direccion: v[] = %x puntero = %x\n",&vector[i],(ptr+i));
				}
				printf("\n");
				p=muestra(vector,x,&p);//envio y retor en forma de puntero
			
				for(i=0;i<TAM-10;i++){
					printf("\nla valor: v[] = %d puntero = %d",vector[i],*(p+i));
				}
				fflush(stdin);
				n=tolower(getchar());
			}while(n!='.');	
		break;
		
		default://cuando no entra en ningun caso entra en el default;
		
		//----------------------------Ejemplos-------------------------------
			do{
                system("cls");
				printf("Saber si un numero es par o impar \nNumero:");
				scanf("%d",&x);				
                if(x%2==0){
                    printf("El numero es par\n");
				}else{
                    printf("El numero es impar\n");
				}
				printf("punto para ir al otro ejmeplo");
				fflush(stdin);
                n=tolower(getchar());
                system("pause");
            }while(n!='.');
            
			do{
                system("cls");	
				printf("Calcular el numero mayor y menor de tres numeros \n\n");
                for(i=0;i<3;i++){
                    printf("Numero %d: ",i+1);
                    scanf("%d",&vector[i]);//escaneo de un vector tipo entero;
				}
                for(i=1;i<3;i++){//metodo se ayuda para ordenar varibles printf("mirar con detenimiento como estan ordenados los for");
                    for(j=0;j<3;j++){
                        if(vector[j]<vector[i]){
                        	burbuja(&vector[j],&vector[i]);
						}
                    }
				}
                printf("El numero mayor es %d \n",vector[0]);
				printf("El numero menor es %d \n",vector[2]);
				printf("punto para ir al otro ejmeplo");
				fflush(stdin);
                n=tolower(getchar());
            }while(n!='.');
		break;
	}
    
	system ("pause");
    return (EXIT_SUCCESS);
}

//return_type funtion_name(parameters);
int factorial(int num){//x=num;
	if(num==1)//caso base 
		return(1);
	else
		return(num*factorial(num-1));
	/*
	logica del proceso
	
	1=1->1*1=1;
	2=2->2*1=2,2*1=1;
	3=6->3*2=6,6*1=6;
	4=24->4*3=12,12*2=24,24*1=24;
	
	otro ejemplo 
	
	int i,fin;
    for(i=1,fin=1; i<=x; i++) {
        fin*=i;
    }
    printf("resultado %d",fin);
    */
}

void burbuja(long *x,int *y){// funcion: a es igual &x por lo tanto *a es igual x.

	static int aux; //permanecen apesar de que la funcion termine ejemplo: en la segunda vuelta sigue manteniendo los datos de la primera
	printf("Static= %d\n",aux);
	aux=0;
	aux=*x;
	*x=*y;
	*y=aux;
}

int * muestra(int *v,long x,int **p){
	static total[5];//permanecen apesar de que la funcion termine ejemplo: en la segunda vuelta sigue manteniendo los datos de la primera
	int i,event;
	
	printf("dereccion: x = %x, puntero = %x\n",&x,*p);
	printf("valor: x = %d, puntero = %d\n",x,**p);
	for(i=0,event=0;i<TAM-10;i++){
		total[i] += event+=2;
		printf("la direccion en la funcion es v[] = %x\n",&v[i]);
	}
	return (total);
}
