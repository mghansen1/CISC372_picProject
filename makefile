
image:image.c image.h
	gcc -g image.c -o image -lm
clean:
	rm -f image output.png image_omp image_pthread
image_pthread: image_pthread.c image_pthread.h
	gcc -g image_pthread.c -o image_pthread -lm -lpthread
image_omp: image_mp.c image.h
	gcc -g image_mp.c -o image_mp -lm -fopenmp

