-- Active: 1671733150672@@localhost@5432@drivencurso@public
-- Active: 1671737226367@@127.0.0.1@5432@postgres@public
CREATE TABLE "Alunos" (
	"Id" serial PRIMARY KEY,
	"Nome" TEXT NOT NULL,
	"CPF" VARCHAR(11) NOT NULL UNIQUE
);


CREATE TABLE "Turmas" (
	"Id" serial PRIMARY KEY,
	"Codigo" TEXT NOT NULL
);



CREATE TABLE "Alunos_Turmas" (
	"Id" serial PRIMARY KEY,
	"AlunoId" integer NOT NULL,
	"TurmaId" integer NOT NULL,
	"Entrada" DATE NOT NULL,
	"Saida" DATE
);



CREATE TABLE "Projetos" (
	"Id" serial PRIMARY KEY,
	"Nome" TEXT NOT NULL,
	"Nota" TEXT NOT NULL,
	"ModuloId" integer NOT NULL,
	"AlunoId" integer NOT NULL
);


CREATE TABLE "Modulos" (
	"Id" serial PRIMARY KEY,
	"Nome" TEXT NOT NULL
);

ALTER TABLE "Alunos_Turmas" ADD CONSTRAINT "Alunos_Turmas_fk0" FOREIGN KEY ("AlunoId") REFERENCES "Alunos"("Id");
ALTER TABLE "Alunos_Turmas" ADD CONSTRAINT "Alunos_Turmas_fk1" FOREIGN KEY ("TurmaId") REFERENCES "Turmas"("Id");
ALTER TABLE "Projetos" ADD CONSTRAINT "Projetos_fk0" FOREIGN KEY ("ModuloId") REFERENCES "Modulos"("Id");
ALTER TABLE "Projetos" ADD CONSTRAINT "Projetos_fk1" FOREIGN KEY ("AlunoId") REFERENCES "Alunos"("Id");






