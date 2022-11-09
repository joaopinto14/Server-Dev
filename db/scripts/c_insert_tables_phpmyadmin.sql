/* 
File: c_create_tables_pma.sql
Author: João Pinto
GitHub: https://github.com/joaopinto14
Description: Scripts to insert data into pma_* tables
Version: 1.0
*/


use phpmyadmin;

-- Extraindo dados da tabela `settings__userconfig`
INSERT INTO `pma__userconfig` (`username`, `config_data`) VALUES
('root', '{"Server\/hide_db":"information_schema|mysql|performance_schema|sys|phpmyadmin","ThemeDefault":"metro"}')