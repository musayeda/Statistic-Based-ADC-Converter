LIBRARY altera  ; 
LIBRARY cycloneive  ; 
LIBRARY ieee  ; 
LIBRARY std  ; 
USE altera.altera_primitives_components.all  ; 
USE cycloneive.cycloneive_components.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY proj_ckt_tb2  IS 
END ; 
 
ARCHITECTURE proj_ckt_tb2_arch OF proj_ckt_tb2 IS
  SIGNAL CAP6N   :  STD_LOGIC  ; 
  SIGNAL CAP4P   :  STD_LOGIC  ; 
  SIGNAL CLOCK_50   :  STD_LOGIC  ; 
  SIGNAL CLK6   :  STD_LOGIC  ; 
  SIGNAL CLK7   :  STD_LOGIC  ; 
  SIGNAL CAP8N   :  STD_LOGIC  ; 
  SIGNAL CAP6P   :  STD_LOGIC  ; 
  SIGNAL CLK8   :  STD_LOGIC  ; 
  SIGNAL CAP1N   :  STD_LOGIC  ; 
  SIGNAL CLK10   :  STD_LOGIC  ; 
  SIGNAL CLK9   :  STD_LOGIC  ; 
  SIGNAL D0   :  STD_LOGIC  ; 
  SIGNAL CAP8P   :  STD_LOGIC  ; 
  SIGNAL set   :  STD_LOGIC  ; 
  SIGNAL CAP3N   :  STD_LOGIC  ; 
  SIGNAL CAP1P   :  STD_LOGIC  ; 
  SIGNAL CAP5N   :  STD_LOGIC  ; 
  SIGNAL CAP3P   :  STD_LOGIC  ; 
  SIGNAL CAP7N   :  STD_LOGIC  ; 
  SIGNAL CAP5P   :  STD_LOGIC  ; 
  SIGNAL CAP9N   :  STD_LOGIC  ; 
  SIGNAL CAP7P   :  STD_LOGIC  ; 
  SIGNAL CLK1   :  STD_LOGIC  ; 
  SIGNAL CAP2N   :  STD_LOGIC  ; 
  SIGNAL CLK2   :  STD_LOGIC  ; 
  SIGNAL CAP9P   :  STD_LOGIC  ; 
  SIGNAL CLK3   :  STD_LOGIC  ; 
  SIGNAL COMPOUTN   :  STD_LOGIC  ; 
  SIGNAL CLKS   :  STD_LOGIC  ; 
  SIGNAL CAP4N   :  STD_LOGIC  ; 
  SIGNAL CAP2P   :  STD_LOGIC  ; 
  SIGNAL CLK4   :  STD_LOGIC  ; 
  SIGNAL GPIO   :  std_logic_vector (1 downto 0)  ; 
  SIGNAL CLK5   :  STD_LOGIC  ; 
  SIGNAL COMPOUTP   :  STD_LOGIC  ; 
  COMPONENT project_circuit  
    PORT ( 
      CAP6N  : inout STD_LOGIC ; 
      CAP4P  : inout STD_LOGIC ; 
      CLOCK_50  : in STD_LOGIC ; 
      CLK6  : out STD_LOGIC ; 
      CLK7  : out STD_LOGIC ; 
      CAP8N  : inout STD_LOGIC ; 
      CAP6P  : inout STD_LOGIC ; 
      CLK8  : out STD_LOGIC ; 
      CAP1N  : inout STD_LOGIC ; 
      CLK10  : out STD_LOGIC ; 
      CLK9  : out STD_LOGIC ; 
      D0  : inout STD_LOGIC ; 
      CAP8P  : inout STD_LOGIC ; 
      set  : in STD_LOGIC ; 
      CAP3N  : inout STD_LOGIC ; 
      CAP1P  : inout STD_LOGIC ; 
      CAP5N  : inout STD_LOGIC ; 
      CAP3P  : inout STD_LOGIC ; 
      CAP7N  : inout STD_LOGIC ; 
      CAP5P  : inout STD_LOGIC ; 
      CAP9N  : inout STD_LOGIC ; 
      CAP7P  : inout STD_LOGIC ; 
      CLK1  : out STD_LOGIC ; 
      CAP2N  : inout STD_LOGIC ; 
      CLK2  : out STD_LOGIC ; 
      CAP9P  : inout STD_LOGIC ; 
      CLK3  : out STD_LOGIC ; 
      COMPOUTN  : inout STD_LOGIC ; 
      CLKS  : out STD_LOGIC ; 
      CAP4N  : inout STD_LOGIC ; 
      CAP2P  : inout STD_LOGIC ; 
      CLK4  : out STD_LOGIC ; 
      GPIO  : out std_logic_vector (1 downto 0) ; 
      CLK5  : out STD_LOGIC ; 
      COMPOUTP  : inout STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : project_circuit  
    PORT MAP ( 
      CAP6N   => CAP6N  ,
      CAP4P   => CAP4P  ,
      CLOCK_50   => CLOCK_50  ,
      CLK6   => CLK6  ,
      CLK7   => CLK7  ,
      CAP8N   => CAP8N  ,
      CAP6P   => CAP6P  ,
      CLK8   => CLK8  ,
      CAP1N   => CAP1N  ,
      CLK10   => CLK10  ,
      CLK9   => CLK9  ,
      D0   => D0  ,
      CAP8P   => CAP8P  ,
      set   => set  ,
      CAP3N   => CAP3N  ,
      CAP1P   => CAP1P  ,
      CAP5N   => CAP5N  ,
      CAP3P   => CAP3P  ,
      CAP7N   => CAP7N  ,
      CAP5P   => CAP5P  ,
      CAP9N   => CAP9N  ,
      CAP7P   => CAP7P  ,
      CLK1   => CLK1  ,
      CAP2N   => CAP2N  ,
      CLK2   => CLK2  ,
      CAP9P   => CAP9P  ,
      CLK3   => CLK3  ,
      COMPOUTN   => COMPOUTN  ,
      CLKS   => CLKS  ,
      CAP4N   => CAP4N  ,
      CAP2P   => CAP2P  ,
      CLK4   => CLK4  ,
      GPIO   => GPIO  ,
      CLK5   => CLK5  ,
      COMPOUTP   => COMPOUTP   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 100 us, Period = 20 ns
  Process
	Begin
	 clock_50  <= '0'  ;
	wait for 10 ns ;
-- 10 ns, single loop till start period.
	for Z in 1 to 4000
	loop
	    clock_50  <= '1'  ;
	   wait for 10 ns ;
	    clock_50  <= '0'  ;
	   wait for 10 ns ;
-- 90 ns, repeat pattern in loop.
	end  loop;
	 clock_50  <= '1'  ;
	wait for 10 ns ;
-- dumped values till 100 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 100 us, Period = 0 ns
  Process
	Begin
	 set  <= '1'  ;
	wait for 100 ns ;
	set  <= '0'  ;
-- dumped values till 100 ns
	wait;
 End Process;
END;
