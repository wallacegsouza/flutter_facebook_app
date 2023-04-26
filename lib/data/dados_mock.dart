import 'package:facebook_interface/domain/entities/post.dart';
import 'package:facebook_interface/domain/entities/story.dart';
import 'package:facebook_interface/domain/entities/user.dart';

/*
* Fontes imagens: https://source.unsplash.com/
* Foto específica:
*   https://source.unsplash.com/JQFHdpOKz2k/800x600
* Foto aleatória:
*   https://source.unsplash.com/9ChfwZzv4ys/800x600
* */

/* Usuário Logado */
User userAtual = User(
    nome: "Jamilton Damasceno",
    urlImage: "https://source.unsplash.com/EQFtEzJGERg/800x600");

/* Lista de usuários online */
List<User> usersOnline = [
  User(
      nome: "José Renato de almeida",
      urlImage: "https://source.unsplash.com/UJLAMjEjISo/800x600"),
  User(
      nome: "Maria Almeida",
      urlImage: "https://source.unsplash.com/0wRXAXqIp58/800x600"),
  User(
      nome: "Fernando Lima de albuquerque filho",
      urlImage: "https://source.unsplash.com/59HOrlAKTOU/800x600"),
  User(
      nome: "Marcela Faria",
      urlImage: "https://source.unsplash.com/GXzHGgzraHc/800x600"),
  User(
      nome: "Carlos Eduardo",
      urlImage: "https://source.unsplash.com/y8yimL21z8s/800x600"),
  User(
      nome: "Joana Santos",
      urlImage: "https://source.unsplash.com/PXWiHU7pbeg/800x600"),
  User(
      nome: "Rodrigo Caio",
      urlImage: "https://source.unsplash.com/MS0RHQ1enek/800x600"),
  User(
      nome: "Pedro do Carmo",
      urlImage: "https://source.unsplash.com/9ChfwZzv4ys/800x600"),
];

/* Lista de estórias */
List<Story> Storys = [
  Story(
    user: usersOnline[0],
    urlImage: "https://source.unsplash.com/JMWjOup32Fk/800x600",
    isVisualized: true,
  ),
  Story(
    user: usersOnline[1],
    urlImage: "https://source.unsplash.com/no_TCkPUq_s/800x600",
    isVisualized: true,
  ),
  Story(
      user: usersOnline[2],
      urlImage: "https://source.unsplash.com/6dX5TPPM34M/800x600"),
  Story(
      user: usersOnline[3],
      urlImage: "https://source.unsplash.com/PO7CGnoDFUI/800x600"),
  Story(
      user: usersOnline[4],
      urlImage: "https://source.unsplash.com/rewyZqUwAqY/800x600"),
  Story(
      user: usersOnline[5],
      urlImage: "https://source.unsplash.com/1HpQU1evGK8/800x600"),
  Story(
      user: usersOnline[6],
      urlImage: "https://source.unsplash.com/W9z_628BBpc/800x600"),
  Story(
      user: usersOnline[7],
      urlImage: "https://source.unsplash.com/DOb-2jd0sbc/800x600"),
];

/* Lista de postagens */
List<Post> postagens = [
  Post(
      user: usersOnline[0],
      descricao: "Passeio muito legal no final de semana",
      tempoAtras: "20m",
      urlImage: "https://source.unsplash.com/DOb-2jd0sbc/800x600",
      curtidas: 30,
      comentarios: 3,
      compartilhamentos: 5),
  Post(
      user: usersOnline[1],
      descricao: "Quero compartilhar com você algo que aconteceu...",
      tempoAtras: "40m",
      urlImage: "https://source.unsplash.com/G0H58Z5aPog/800x600",
      curtidas: 30,
      comentarios: 3,
      compartilhamentos: 5),
  Post(
      user: usersOnline[2],
      descricao: "Não recomendo esse lugar, não fomos bem atendidos",
      tempoAtras: "55m",
      urlImage: "https://source.unsplash.com/1a_u4n02YNo/800x600",
      curtidas: 30,
      comentarios: 3,
      compartilhamentos: 5),
  Post(
      user: usersOnline[3],
      descricao:
          "Não importa o que você sabe, mas o que faz com o que você sabe!",
      tempoAtras: "1h",
      urlImage: "https://source.unsplash.com/sfL_QOnmy00/800x600",
      curtidas: 30,
      comentarios: 3,
      compartilhamentos: 5),
  Post(
      user: usersOnline[4],
      descricao: "Preciso de indicações de eletricista, meu chuveiro pifou :(",
      tempoAtras: "2h",
      urlImage: "https://source.unsplash.com/_tWMmC9CQXQ/800x600",
      curtidas: 30,
      comentarios: 3,
      compartilhamentos: 5),
  Post(
      user: usersOnline[5],
      descricao: "Que chuva maravilhosa!",
      tempoAtras: "2d",
      urlImage: "https://source.unsplash.com/a4wUKaaMGWQ/800x600",
      curtidas: 30,
      comentarios: 3,
      compartilhamentos: 5),
  Post(
      user: usersOnline[6],
      descricao: "Um dia mais que especial, nos divertimos bastante ;)",
      tempoAtras: "3d",
      urlImage: "https://source.unsplash.com/YS1OOmHAFD0/800x600",
      curtidas: 100,
      comentarios: 30,
      compartilhamentos: 3),
  Post(
      user: usersOnline[7],
      descricao: "VOCÊ É DO TAMANHO DOS SEUS SONHOS! Lute, persista, "
          "insista, corra atrás, passe algumas noites sem dormir direito, "
          "mas nunca desista de seus sonhos, acredite que é capaz, se olhe "
          "no espelho e diga pra você: VOCÊ TEM POTENCIAL! "
          "Ninguém além de você mesmo pode torná-lo real.",
      tempoAtras: "3d",
      urlImage: "https://source.unsplash.com/Ng2Hg1YMMuU/800x600",
      curtidas: 230,
      comentarios: 25,
      compartilhamentos: 3),
];
