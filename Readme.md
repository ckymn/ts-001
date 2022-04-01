### Technologies

    1. TypeScript
    2. Node.js
    3. Docker
        -Dockerfile
            * Dockerfile içerisinde hangi Image'ın kullanılacağı, hangi dosyaları içereceği ve hangi uygulamanın hangi parametrelerle çalışacağı yazılır.
        -dockerignore
            * dockerfile dosyasinda COPY metodu calistigi zaman node_modules alanini cagirmamasini soyluyoruz
        -docker-compose.dev.yml
            * Docker Compose, kompleks uygulamaların tanımlanmasını ve çalıştırılmasını sağlar.
            * Birden fazla container tanımını tek bir dosyada yapabilirsiniz.
            * Tek bir komut ile uygulamanızın ihtiyaç duyduğu tüm gereksinimleri ayağa kaldırarak uygulamayı çalıştırabilirsiniz.
