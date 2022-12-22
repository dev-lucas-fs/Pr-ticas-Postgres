CREATE TABLE "Companhias" (
	"Id" serial PRIMARY KEY,
	"Sigla" TEXT NOT NULL,
	"Nome" TEXT NOT NULL
);


CREATE TABLE "Voos" (
	"Id" serial PRIMARY KEY,
	"Sigla" TEXT NOT NULL,
	"origemAeroportoId" integer NOT NULL,
	"destinoAeroportoId" integer NOT NULL,
	"HorarioSaida" TIMESTAMP NOT NULL,
	"HorarioChegada" TIMESTAMP NOT NULL,
	"CompanhiaId" integer NOT NULL
);


CREATE TABLE "Aeroportos" (
	"Id" serial  PRIMARY KEY,
	"Nome" TEXT NOT NULL,
	"Sigla" TEXT NOT NULL
);

ALTER TABLE "Voos" ADD CONSTRAINT "Voos_fk0" FOREIGN KEY ("origemAeroportoId") REFERENCES "Aeroportos"("Id");
ALTER TABLE "Voos" ADD CONSTRAINT "Voos_fk1" FOREIGN KEY ("destinoAeroportoId") REFERENCES "Aeroportos"("Id");
ALTER TABLE "Voos" ADD CONSTRAINT "Voos_fk2" FOREIGN KEY ("CompanhiaId") REFERENCES "Companhias"("Id");




