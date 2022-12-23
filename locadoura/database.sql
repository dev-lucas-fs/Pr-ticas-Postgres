CREATE TABLE "Discos" (
	"Id" serial PRIMARY KEY,
	"FilmeId" integer NOT NULL,
	"CodigoBarras" TEXT NOT NULL,
	"Numero" TEXT NOT NULL
)



CREATE TABLE "Filmes" (
	"Id" serial PRIMARY KEY,
	"Titulo" TEXT NOT NULL,
	"CategoriaId" integer NOT NULL
)



CREATE TABLE "Categorias" (
	"Id" serial PRIMARY KEY,
	"Nome" TEXT NOT NULL
)



CREATE TABLE "Atores" (
	"Id" serial PRIMARY KEY,
	"Nome" serial NOT NULL,
	"PaisId" serial NOT NULL,
	"DataNascimento" DATE NOT NULL
)



CREATE TABLE "Filme_Ator" (
	"Id" serial PRIMARY KEY,
	"AtorId" integer NOT NULL,
	"FilmeId" integer NOT NULL
)



CREATE TABLE "Pais" (
	"Id" serial PRIMARY KEY,
	"Nome" TEXT NOT NULL
)


CREATE TABLE "Cliente" (
	"Id" serial PRIMARY KEY,
	"Nome" TEXT NOT NULL
)



CREATE TABLE "Telefones" (
	"Id" serial PRIMARY KEY,
	"DDD" TEXT(3) NOT NULL,
	"Numero" TEXT(9) NOT NULL
)



CREATE TABLE "Endereco" (
	"Id" serial PRIMARY KEY,
	"Rua" TEXT NOT NULL,
	"Numero" TEXT NOT NULL,
	"Complemento" TEXT NOT NULL,
	"Bairro" TEXT NOT NULL,
	"Cidade" TEXT NOT NULL,
	"Estado" TEXT NOT NULL
)



CREATE TABLE "Cliente_Telefone" (
	"Id" serial PRIMARY KEY,
	"ClientId" integer NOT NULL,
	"TelefoneId" integer NOT NULL
)



CREATE TABLE "Cliente_Endereco" (
	"Id" serial PRIMARY KEY,
	"ClientId" integer NOT NULL,
	"EnderecoId" integer NOT NULL
)



CREATE TABLE "Cliente_Disco" (
	"Id" serial PRIMARY KEY,
	"DiscoId" integer NOT NULL,
	"DataLocacaoId" integer NOT NULL,
	"ClientId" integer NOT NULL
)



CREATE TABLE "DataLocacoes" (
	"Id" serial PRIMARY KEY,
	"Locacao" DATE NOT NULL,
	"Devolucao" DATE
)



CREATE TABLE "Pesquisa" (
	"Id" serial PRIMARY KEY,
	"Atendimento" integer
)



CREATE TABLE "Pesquisa_Locacao" (
	"Id" serial PRIMARY KEY,
	"LocacaoId" integer NOT NULL,
	"PesquisaId" integer NOT NULL
)



ALTER TABLE "Discos" ADD CONSTRAINT "Discos_fk0" FOREIGN KEY ("FilmeId") REFERENCES "Filmes"("Id");
ALTER TABLE "Discos" ADD CONSTRAINT "Discos_fk1" FOREIGN KEY ("CodigoBarras") REFERENCES ""("");
ALTER TABLE "Discos" ADD CONSTRAINT "Discos_fk2" FOREIGN KEY ("Numero") REFERENCES ""("");

ALTER TABLE "Filmes" ADD CONSTRAINT "Filmes_fk0" FOREIGN KEY ("CategoriaId") REFERENCES "Categorias"("Id");


ALTER TABLE "Atores" ADD CONSTRAINT "Atores_fk0" FOREIGN KEY ("PaisId") REFERENCES "Pais"("Id");

ALTER TABLE "Filme_Ator" ADD CONSTRAINT "Filme_Ator_fk0" FOREIGN KEY ("AtorId") REFERENCES "Atores"("Id");
ALTER TABLE "Filme_Ator" ADD CONSTRAINT "Filme_Ator_fk1" FOREIGN KEY ("FilmeId") REFERENCES "Filmes"("Id");





ALTER TABLE "Cliente_Telefone" ADD CONSTRAINT "Cliente_Telefone_fk0" FOREIGN KEY ("ClientId") REFERENCES "Cliente"("Id");
ALTER TABLE "Cliente_Telefone" ADD CONSTRAINT "Cliente_Telefone_fk1" FOREIGN KEY ("TelefoneId") REFERENCES "Telefones"("Id");

ALTER TABLE "Cliente_Endereco" ADD CONSTRAINT "Cliente_Endereco_fk0" FOREIGN KEY ("ClientId") REFERENCES "Cliente"("Id");
ALTER TABLE "Cliente_Endereco" ADD CONSTRAINT "Cliente_Endereco_fk1" FOREIGN KEY ("EnderecoId") REFERENCES "Endereco"("Id");

ALTER TABLE "Cliente_Disco" ADD CONSTRAINT "Cliente_Disco_fk0" FOREIGN KEY ("DiscoId") REFERENCES "Discos"("Id");
ALTER TABLE "Cliente_Disco" ADD CONSTRAINT "Cliente_Disco_fk1" FOREIGN KEY ("DataLocacaoId") REFERENCES "DataLocacoes"("Id");
ALTER TABLE "Cliente_Disco" ADD CONSTRAINT "Cliente_Disco_fk2" FOREIGN KEY ("ClientId") REFERENCES "Cliente"("Id");



ALTER TABLE "Pesquisa_Locacao" ADD CONSTRAINT "Pesquisa_Locacao_fk0" FOREIGN KEY ("LocacaoId") REFERENCES "Cliente_Disco"("Id");
ALTER TABLE "Pesquisa_Locacao" ADD CONSTRAINT "Pesquisa_Locacao_fk1" FOREIGN KEY ("PesquisaId") REFERENCES "Pesquisa"("Id");















