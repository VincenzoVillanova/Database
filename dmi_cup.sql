-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Lug 10, 2023 alle 16:26
-- Versione del server: 10.4.28-MariaDB
-- Versione PHP: 8.2.4

DROP DATABASE IF EXISTS `dmi_cup`;
CREATE DATABASE IF NOT EXISTS `dmi_cup`;
USE `dmi_cup`;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dmi_cup`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `allenatore`
--

CREATE TABLE `allenatore` (
  `ID` int(11) NOT NULL,
  `nominativo` varchar(100) DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `nazionalita` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `allenatore`
--

INSERT INTO `allenatore` (`ID`, `nominativo`, `data_nascita`, `nazionalita`) VALUES
(1, 'Maurizio Sarri', '1959-01-10', 'Italia'),
(2, 'Mario Rossi', '1980-05-10', 'Italia'),
(3, 'John Smith', '1975-12-15', 'Stati Uniti'),
(4, 'Juan Lopez', '1982-08-22', 'Spagna'),
(5, 'Emma Müller', '1990-03-27', 'Germania'),
(6, 'Jurgen Klopp', '1967-06-16', 'Germania');

-- --------------------------------------------------------

--
-- Struttura della tabella `arbitro`
--

CREATE TABLE `arbitro` (
  `ID` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `nazionalita` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `arbitro`
--

INSERT INTO `arbitro` (`ID`, `nome`, `data_nascita`, `nazionalita`) VALUES
(1, 'Luigi Bianchi', '1985-07-12', 'Italia'),
(2, 'John Johnson', '1978-02-18', 'Stati Uniti'),
(3, 'Pablo Martinez', '1983-11-25', 'Spagna'),
(4, 'Maria Schmidt', '1992-06-05', 'Germania'),
(5, 'Jean Dupont', '1980-09-15', 'Francia');

-- --------------------------------------------------------

--
-- Struttura della tabella `giocatore`
--

CREATE TABLE `giocatore` (
  `ID` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `ruolo` varchar(50) DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `nazionalita` varchar(50) DEFAULT NULL,
  `ID_squadra` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `giocatore`
--

INSERT INTO `giocatore` (`ID`, `nome`, `ruolo`, `data_nascita`, `nazionalita`, `ID_squadra`) VALUES
(2, 'Marco Rossi', 'Attaccante', '1990-01-01', 'Italia', 1),
(3, 'Luca Verdi', 'Centrocampista', '1992-03-15', 'Italia', 1),
(4, 'Giovanni Bianchi', 'Difensore', '1994-05-20', 'Italia', 1),
(5, 'Andrea Esposito', 'Attaccante', '1991-02-10', 'Italia', 1),
(6, 'Matteo Russo', 'Portiere', '1993-04-25', 'Italia', 1),
(7, 'Alessio Conti', 'Difensore', '1995-06-30', 'Italia', 1),
(8, 'David Villa', 'Attaccante', '1989-12-02', 'Spagna', 2),
(9, 'Gavi', 'Centrocampista', '1991-02-14', 'Spagna', 2),
(10, 'Sergio Ramos', 'Difensore', '1993-04-24', 'Spagna', 2),
(11, 'Francesco Esposito', 'Attaccante', '1990-01-05', 'Spagna', 2),
(12, 'Casillas', 'Portiere', '1992-03-18', 'Spagna', 2),
(13, 'Gerard Piquè', 'Difensore', '1994-05-23', 'Spagna', 2),
(14, 'Thomas Müller', 'Attaccante', '1989-12-03', 'Germania', 3),
(15, 'Mario Schmidt', 'Centrocampista', '1991-02-15', 'Germania', 3),
(16, 'Maximilian Weber', 'Difensore', '1993-04-23', 'Germania', 3),
(17, 'Sebastian Fischer', 'Attaccante', '1990-01-06', 'Germania', 3),
(18, 'Dominik Wagner', 'Portiere', '1992-03-19', 'Germania', 3),
(19, 'Nico Klein', 'Difensore', '1994-05-22', 'Germania', 3),
(20, 'Robert Smith', 'Attaccante', '1989-12-04', 'Inghilterra', 4),
(21, 'Daniel Johnson', 'Centrocampista', '1991-02-16', 'Inghilterra', 4),
(22, 'Michael Brown', 'Difensore', '1993-04-22', 'Inghilterra', 4),
(23, 'Christopher Taylor', 'Attaccante', '1990-01-07', 'Inghilterra', 4),
(24, 'James Wilson', 'Portiere', '1992-03-20', 'Inghilterra', 4),
(25, 'Matthew Green', 'Difensore', '1994-05-21', 'Inghilterra', 4),
(26, 'Kevin De Bruyne', 'Centrocampista', '1991-06-28', 'Belgio', 5),
(27, 'Romelu Lukaku', 'Attaccante', '1993-05-13', 'Belgio', 5),
(28, 'Eden Hazard', 'Centrocampista', '1991-01-07', 'Belgio', 5),
(29, 'Thibaut Courtois', 'Portiere', '1992-05-11', 'Belgio', 5),
(30, 'Axel Witsel', 'Centrocampista', '1989-01-12', 'Belgio', 5),
(31, 'Jan Vertonghen', 'Difensore', '1987-04-24', 'Belgio', 5),
(32, 'Lionel Messi', 'Attaccante', '1987-06-24', 'Argentina', 6),
(33, 'Sergio Agüero', 'Attaccante', '1988-06-02', 'Argentina', 6),
(34, 'Angel Di Maria', 'Centrocampista', '1988-02-14', 'Argentina', 6),
(35, 'Gonzalo Higuain', 'Attaccante', '1987-12-10', 'Argentina', 6),
(36, 'Juan Musso', 'Portiere', '1984-06-08', 'Argentina', 6),
(37, 'Nicolas Otamendi', 'Difensore', '1988-02-12', 'Argentina', 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `partita`
--

CREATE TABLE `partita` (
  `ID` int(11) NOT NULL,
  `ID_casa` int(11) DEFAULT NULL,
  `ID_trasferta` int(11) DEFAULT NULL,
  `gol_casa` int(11) DEFAULT NULL,
  `gol_trasferta` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `ID_stadio` int(11) DEFAULT NULL,
  `ID_arbitro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `partita`
--

INSERT INTO `partita` (`ID`, `ID_casa`, `ID_trasferta`, `gol_casa`, `gol_trasferta`, `data`, `ID_stadio`, `ID_arbitro`) VALUES
(1, 5, 3, 3, 1, '2023-07-10', 4, 3),
(2, 1, 2, 1, 1, '2023-07-10', 2, 1),
(3, 6, 4, 5, 2, '2023-07-11', 6, 2),
(4, 1, 2, 2, 1, '2023-07-01', 1, 1),
(5, 3, 4, 3, 3, '2023-07-02', 2, 2),
(6, 5, 6, 1, 2, '2023-07-03', 3, 3),
(7, 1, 3, 0, 0, '2023-07-04', 4, 4),
(8, 2, 4, 2, 1, '2023-07-05', 5, 5),
(9, 6, 5, 0, 2, '2023-07-06', 6, 1),
(10, 4, 2, 1, 0, '2023-07-07', 7, 2),
(11, 3, 1, 2, 2, '2023-07-08', 8, 3),
(12, 6, 4, 1, 3, '2023-07-09', 1, 4),
(13, 5, 3, 2, 0, '2023-07-10', 2, 5),
(14, 1, 6, 0, 1, '2023-07-11', 3, 1),
(15, 2, 5, 3, 0, '2023-07-12', 4, 2),
(16, 4, 3, 1, 1, '2023-07-13', 5, 3),
(17, 5, 2, 2, 2, '2023-07-14', 6, 4),
(18, 6, 1, 0, 0, '2023-07-15', 7, 5),
(19, 3, 6, 2, 1, '2023-07-16', 8, 1),
(20, 5, 1, 1, 0, '2023-07-17', 1, 2),
(21, 2, 4, 0, 2, '2023-07-18', 2, 3);

--
-- Trigger `partita`
--
DELIMITER $$
CREATE TRIGGER `aggiorna_punti_squadra` AFTER INSERT ON `partita` FOR EACH ROW BEGIN
    DECLARE casa_punti INT;
    DECLARE trasferta_punti INT;
    
    IF NEW.gol_casa > NEW.gol_trasferta THEN
        SET casa_punti = 3;
        SET trasferta_punti = 0;
    ELSEIF NEW.gol_casa = NEW.gol_trasferta THEN
        SET casa_punti = 1;
        SET trasferta_punti = 1;
    ELSE
        SET casa_punti = 0;
        SET trasferta_punti = 3;
    END IF;
    
    UPDATE Squadra
    SET punti = punti + casa_punti
    WHERE ID = NEW.ID_casa;
    
    UPDATE Squadra
    SET punti = punti + trasferta_punti
    WHERE ID = NEW.ID_trasferta;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struttura della tabella `squadra`
--

CREATE TABLE `squadra` (
  `ID` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `anno_fondazione` int(11) DEFAULT NULL,
  `punti` int(11) DEFAULT NULL,
  `ID_allenatore` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `squadra`
--

INSERT INTO `squadra` (`ID`, `nome`, `anno_fondazione`, `punti`, `ID_allenatore`) VALUES
(1, 'Juventus', 1897, 7, 1),
(2, 'Real Madrid', 1902, 8, 2),
(3, 'Bayern Monaco', 1900, 7, 3),
(4, 'Manchester United', 1878, 11, 4),
(5, 'Barcelona', 1899, 13, 5),
(6, 'Liverpool', 1892, 10, 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `stadio`
--

CREATE TABLE `stadio` (
  `ID` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `capacita` int(11) DEFAULT NULL,
  `localita` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `stadio`
--

INSERT INTO `stadio` (`ID`, `nome`, `capacita`, `localita`) VALUES
(1, 'Stadio Olimpico', 80000, 'Roma'),
(2, 'Wembley Stadium', 90000, 'Londra'),
(3, 'Allianz Arena', 75000, 'Monaco di Baviera'),
(4, 'Camp Nou', 99000, 'Barcellona'),
(5, 'Signal Iduna Park', 82000, 'Dortmund'),
(6, 'San Siro', 80000, 'Milano'),
(7, 'Estadio Santiago Bernabeu', 81000, 'Madrid'),
(8, 'Stade de France', 80000, 'Parigi');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `allenatore`
--
ALTER TABLE `allenatore`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `arbitro`
--
ALTER TABLE `arbitro`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `giocatore`
--
ALTER TABLE `giocatore`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_squadra` (`ID_squadra`);

--
-- Indici per le tabelle `partita`
--
ALTER TABLE `partita`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_casa` (`ID_casa`),
  ADD KEY `ID_trasferta` (`ID_trasferta`),
  ADD KEY `ID_stadio` (`ID_stadio`),
  ADD KEY `ID_arbitro` (`ID_arbitro`);

--
-- Indici per le tabelle `squadra`
--
ALTER TABLE `squadra`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_allenatore` (`ID_allenatore`);

--
-- Indici per le tabelle `stadio`
--
ALTER TABLE `stadio`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `allenatore`
--
ALTER TABLE `allenatore`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `arbitro`
--
ALTER TABLE `arbitro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `giocatore`
--
ALTER TABLE `giocatore`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT per la tabella `partita`
--
ALTER TABLE `partita`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT per la tabella `squadra`
--
ALTER TABLE `squadra`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT per la tabella `stadio`
--
ALTER TABLE `stadio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `giocatore`
--
ALTER TABLE `giocatore`
  ADD CONSTRAINT `giocatore_ibfk_1` FOREIGN KEY (`ID_squadra`) REFERENCES `squadra` (`ID`);

--
-- Limiti per la tabella `partita`
--
ALTER TABLE `partita`
  ADD CONSTRAINT `partita_ibfk_1` FOREIGN KEY (`ID_casa`) REFERENCES `squadra` (`ID`),
  ADD CONSTRAINT `partita_ibfk_2` FOREIGN KEY (`ID_trasferta`) REFERENCES `squadra` (`ID`),
  ADD CONSTRAINT `partita_ibfk_3` FOREIGN KEY (`ID_stadio`) REFERENCES `stadio` (`ID`),
  ADD CONSTRAINT `partita_ibfk_4` FOREIGN KEY (`ID_arbitro`) REFERENCES `arbitro` (`ID`);

--
-- Limiti per la tabella `squadra`
--
ALTER TABLE `squadra`
  ADD CONSTRAINT `squadra_ibfk_1` FOREIGN KEY (`ID_allenatore`) REFERENCES `allenatore` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
