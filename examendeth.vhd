--Microprocesador de 4 bits con componentes y RAM.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--entidad
entity examendeth is 
Generic(N : natural := 4; M : natural := 4);
 Port (
 mclk : in STD_LOGIC;
 reset : in STD_LOGIC;
 opt: in STD_LOGIC_VECTOR (2 downto 0);
 muestra : out STD_LOGIC_VECTOR (15 downto 0)
 );
end monociclo;

--Arquitectura
architecture examendeth of examendeth is

--GCM u1 
--Componentes
	component UC
 	Port (
 	mclk : in STD_LOGIC;
 	reset: in STD_LOGIC;
 	lacc : out STD_LOGIC;
 	lcp : out STD_LOGIC;
 	lrd : out STD_LOGIC;
 	lri : out STD_LOGIC;
 	rd_ena : out STD_LOGIC;
 	wb_ena: out STD_LOGIC;
 	);

	end component;

--PC
	 component reg_pc
 		PORT(
 		clk,rest,load : in STD_LOGIC;
		d: out STD_LOGIC_VECTOR (3 downto 0);
 		q : out STD_LOGIC_VECTOR (3 downto 0)
 		);
 	end component;

--RI
	component regr2_ri
 		PORT(
 		clk,rest,load : in STD_LOGIC;
		d: out STD_LOGIC_VECTOR (3 downto 0);
 		q : out STD_LOGIC_VECTOR (3 downto 0)
 		);
 	end component;
 --RD
	component regr2_rd
 		PORT(
 		clk,rest,load : in STD_LOGIC;
		d: out STD_LOGIC_VECTOR (3 downto 0);
 		q : out STD_LOGIC_VECTOR (3 downto 0)
 		);
 	end component;
--ACC regr2
	 component reg_acc
 		PORT(
 		clk,rest,load : in STD_LOGIC;
 		q : out STD_LOGIC_VECTOR (3 downto 0)
 		);
 	end component;
--DEC u3
	component deco_ins
 		PORT(
		RI: out STD_LOGIC_VECTOR (3 downto 0);
 		DI : out STD_LOGIC_VECTOR (7 downto 0)
 		);
 	end component;

--RAM
 	component ROM
 	PORT(
 		clk: in STD_LOGIC_VECTOR (3 downto 0);
 		addr : in STD_LOGIC_VECTOR (3 downto 0);
 		dato_out : out STD_LOGIC_VECTOR (3 downto 0)
 		);
 	end component;

--ALU u6

	component ALU
 		PORT(
 		ACC : in STD_LOGIC;
		ACC: out STD_LOGIC_VECTOR (3 downto 0);
		DI : out STD_LOGIC_VECTOR (7 downto 0);
		RD: out STD_LOGIC_VECTOR (3 downto 0)
 		
 		);
 	end component;
--Señales

--procesos