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
ENTITY proj_ckt_tb5  IS 
END ; 
 
ARCHITECTURE proj_ckt_tb5_arch OF proj_ckt_tb5 IS
	SIGNAL A : STD_LOGIC ;
	SIGNAL B : STD_LOGIC ;
	SIGNAL C : STD_LOGIC ;
  SIGNAL CAP6N   :  STD_LOGIC  ; 
  SIGNAL CAP4P   :  STD_LOGIC  ; 
  --SIGNAL CONST1   :  STD_LOGIC  ; 
  SIGNAL CLK6   :  STD_LOGIC  ; 
  SIGNAL C3B   :  STD_LOGIC  ; 
  SIGNAL CLOCK_50   :  STD_LOGIC  ; 
  SIGNAL CLK7   :  STD_LOGIC  ; 
  SIGNAL CAP8N   :  STD_LOGIC  ; 
  SIGNAL CAP6P   :  STD_LOGIC  ; 
  SIGNAL CLK8   :  STD_LOGIC  ; 
  SIGNAL CAP1N   :  STD_LOGIC  ; 
  SIGNAL CLK9   :  STD_LOGIC  ; 
  SIGNAL CLK10   :  STD_LOGIC  ; 
  SIGNAL D0   :  STD_LOGIC  ; 
  SIGNAL CAP8P   :  STD_LOGIC  ; 
  SIGNAL set   :  STD_LOGIC  ; 
  SIGNAL CAP3N   :  STD_LOGIC  ; 
  SIGNAL CAP1P   :  STD_LOGIC  ; 
  SIGNAL C0B   :  STD_LOGIC  ; 
  SIGNAL CAP5N   :  STD_LOGIC  ; 
  SIGNAL CAP3P   :  STD_LOGIC  ; 
  SIGNAL C2B   :  STD_LOGIC  ; 
  SIGNAL CAP7N   :  STD_LOGIC  ; 
  SIGNAL CAP5P   :  STD_LOGIC  ; 
  SIGNAL CLKCOMP   :  STD_LOGIC  ; 
  SIGNAL CAP9N   :  STD_LOGIC  ; 
  SIGNAL CAP7P   :  STD_LOGIC  ; 
  SIGNAL CLK1   :  STD_LOGIC  ; 
  SIGNAL C0   :  STD_LOGIC  ; 
  SIGNAL CAP2N   :  STD_LOGIC  ; 
  SIGNAL CLK2   :  STD_LOGIC  ; 
  SIGNAL C1   :  STD_LOGIC  ; 
  SIGNAL CAP9P   :  STD_LOGIC  ; 
  SIGNAL CLK3   :  STD_LOGIC  ; 
  SIGNAL CLKS   :  STD_LOGIC  ; 
  SIGNAL COMPOUTN   :  STD_LOGIC  ; 
  SIGNAL C2   :  STD_LOGIC  ; 
  SIGNAL CAP4N   :  STD_LOGIC  ; 
  SIGNAL CAP2P   :  STD_LOGIC  ; 
  SIGNAL CLK4   :  STD_LOGIC  ; 
  SIGNAL C1B   :  STD_LOGIC  ; 
  SIGNAL C3   :  STD_LOGIC  ; 
  SIGNAL GPIO   :  std_logic_vector (1 downto 0)  ; 
  SIGNAL CLK5   :  STD_LOGIC  ; 
  SIGNAL COMPOUTP   :  STD_LOGIC  ; 
  COMPONENT project_circuit  
    PORT ( 
	 A : out STD_LOGIC ;
	 B : out STD_LOGIC ;
	 C : out STD_LOGIC ;
      CAP6N  : inout STD_LOGIC ; 
      CAP4P  : inout STD_LOGIC ; 
      --CONST1  : in STD_LOGIC ; 
      CLK6  : out STD_LOGIC ; 
      C3B  : out STD_LOGIC ; 
      CLOCK_50  : in STD_LOGIC ; 
      CLK7  : out STD_LOGIC ; 
      CAP8N  : inout STD_LOGIC ; 
      CAP6P  : inout STD_LOGIC ; 
      CLK8  : out STD_LOGIC ; 
      CAP1N  : inout STD_LOGIC ; 
      CLK9  : out STD_LOGIC ; 
      CLK10  : out STD_LOGIC ; 
      D0  : inout STD_LOGIC ; 
      CAP8P  : inout STD_LOGIC ; 
      set  : in STD_LOGIC ; 
      CAP3N  : inout STD_LOGIC ; 
      CAP1P  : inout STD_LOGIC ; 
      C0B  : out STD_LOGIC ; 
      CAP5N  : inout STD_LOGIC ; 
      CAP3P  : inout STD_LOGIC ; 
      C2B  : out STD_LOGIC ; 
      CAP7N  : inout STD_LOGIC ; 
      CAP5P  : inout STD_LOGIC ; 
      CLKCOMP  : out STD_LOGIC ; 
      CAP9N  : inout STD_LOGIC ; 
      CAP7P  : inout STD_LOGIC ; 
      CLK1  : out STD_LOGIC ; 
      C0  : out STD_LOGIC ; 
      CAP2N  : inout STD_LOGIC ; 
      CLK2  : out STD_LOGIC ; 
      C1  : out STD_LOGIC ; 
      CAP9P  : inout STD_LOGIC ; 
      CLK3  : out STD_LOGIC ; 
      CLKS  : out STD_LOGIC ; 
      COMPOUTN  : in STD_LOGIC ; 
      C2  : out STD_LOGIC ; 
      CAP4N  : inout STD_LOGIC ; 
      CAP2P  : inout STD_LOGIC ; 
      CLK4  : out STD_LOGIC ; 
      C1B  : out STD_LOGIC ; 
      C3  : out STD_LOGIC ; 
      GPIO  : out std_logic_vector (1 downto 0) ; 
      CLK5  : out STD_LOGIC ; 
      COMPOUTP  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : project_circuit  
    PORT MAP ( 
	 A => A ,
	 B => B ,
	 C => C ,
      CAP6N   => CAP6N  ,
      CAP4P   => CAP4P  ,
      --CONST1   => CONST1  ,
      CLK6   => CLK6  ,
      C3B   => C3B  ,
      CLOCK_50   => CLOCK_50  ,
      CLK7   => CLK7  ,
      CAP8N   => CAP8N  ,
      CAP6P   => CAP6P  ,
      CLK8   => CLK8  ,
      CAP1N   => CAP1N  ,
      CLK9   => CLK9  ,
      CLK10   => CLK10  ,
      D0   => D0  ,
      CAP8P   => CAP8P  ,
      set   => set  ,
      CAP3N   => CAP3N  ,
      CAP1P   => CAP1P  ,
      C0B   => C0B  ,
      CAP5N   => CAP5N  ,
      CAP3P   => CAP3P  ,
      C2B   => C2B  ,
      CAP7N   => CAP7N  ,
      CAP5P   => CAP5P  ,
      CLKCOMP   => CLKCOMP  ,
      CAP9N   => CAP9N  ,
      CAP7P   => CAP7P  ,
      CLK1   => CLK1  ,
      C0   => C0  ,
      CAP2N   => CAP2N  ,
      CLK2   => CLK2  ,
      C1   => C1  ,
      CAP9P   => CAP9P  ,
      CLK3   => CLK3  ,
      CLKS   => CLKS  ,
      COMPOUTN   => COMPOUTN  ,
      C2   => C2  ,
      CAP4N   => CAP4N  ,
      CAP2P   => CAP2P  ,
      CLK4   => CLK4  ,
      C1B   => C1B  ,
      C3   => C3  ,
      GPIO   => GPIO  ,
      CLK5   => CLK5  ,
      COMPOUTP   => COMPOUTP   ) ; 



-- "Constant Pattern"
-- Start Time = 20940 ns, End Time = 100 us, Period = 0 ns
  --Process
	--Begin
	 --compoutp  <= '0'  ;
	--wait for 100 ns ;
-- dumped values till 100 ns
	--wait;
 --End Process;


-- "Constant Pattern"
-- Start Time = 18880 ns, End Time = 100 us, Period = 0 ns
  --Process
	--Begin
	 --compoutn  <= '0'  ;
	--wait for 100 ns ;
-- dumped values till 100 ns
	--wait;
 --End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 100 us, Period = 20 ns
  Process
	Begin
	 clock_50  <= '0'  ;
	wait for 10 ns ;
-- 10 ns, single loop till start period.
	for Z in 1 to 4999
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
-- Start Time = 100 ns, End Time = 100 us, Period = 0 ns
  Process
	Begin
	 set  <= '1'  ;
	wait for 100 ns ;
	set <= '0';
-- dumped values till 100 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 100 us, Period = 0 ns
 -- Process
	--Begin
	-- const1  <= '1'  ;
	--wait for 100 ns ;
-- dumped values till 100 ns
	--wait;
 --End Process;
 
  -- "Constant Pattern" "FOR CLK1
-- Start Time = 100 ns, End Time = 100 us, Period = 0 ns
--  Process
--	Begin
--	 COMPOUTN  <= '0'  ;
--	wait for 2100 ns ; --CLK1
--	 COMPOUTN  <= '1' ;
--	wait for 300 ns ; --2400ns
--	 COMPOUTN <= '0' ;
--	 wait for 3970 ns ; --6370ns, CLK3
--	 COMPOUTN  <= '1'  ;
--	wait for 300 ns ; --6670ns
--	 COMPOUTN <= '0' ;
--	 wait for 3720 ns ; --10390ns, CLK5
--	 COMPOUTN  <= '1'  ;
--	wait for 300 ns ; --10690ns
--	 COMPOUTN <= '0' ;
--	wait for 3820 ns ; --14510ns, CLK7
--	 COMPOUTN  <= '1'  ;
--	wait for 300 ns ; -- 14810ns
--	 COMPOUTN <= '0' ;
--	wait for 3820 ns ; --18630ns, CLK9
--	 COMPOUTN <= '1' ;
--	wait for 300 ns ;
--	 COMPOUTN <= '0' ;
--	 wait for 3670 ns ; --22600ns, CLK1, NEXT CYCLE
--	 COMPOUTN <= '1' ;
--	 wait for 300 ns; --22900ns
--	 COMPOUTN <= '0';
--	 wait for 3970 ns ; --6370ns, CLK3
--	 COMPOUTN  <= '1'  ;
--	wait for 300 ns ; --6670ns
--	 COMPOUTN <= '0' ;
--	 wait for 3970 ns ; --6370ns, CLK5
--	 COMPOUTN  <= '1'  ;
--	wait for 300 ns ; --6670ns
--	 COMPOUTN <= '0' ;
--	 wait for 3970 ns ; --6370ns, CLK7
--	 COMPOUTN  <= '1'  ;
--	wait for 300 ns ; --6670ns
--	 COMPOUTN <= '0' ;
--	 wait for 3970 ns ; --6370ns, CLK9
--	 COMPOUTN  <= '1'  ;
--	wait for 300 ns ; --6670ns
--	 COMPOUTN <= '0' ;
--	wait for 99900 ns ;
--	
---- dumped values till 100 us
--	wait;
-- End Process;
 
--COMPOUTN version 2
	  Process
	Begin
	 COMPOUTN  <= '0'  ;
	wait for 4160 ns ; --CLK2
	 COMPOUTN  <= '1'  ;
	wait for 300 ns ; --4460ns
	 COMPOUTN <= '0' ;
	 wait for 3820 ns ; --8280ns, CLK4
	 COMPOUTN  <= '1'  ;
	wait for 300 ns ; --8580ns
	 COMPOUTN <= '0' ;
	 wait for 3820 ns ; --12400ns, CLK6
	 COMPOUTN  <= '1'  ;
	wait for 300 ns ; --12700ns
	 COMPOUTN <= '0' ;
	 wait for 3820 ns ; --16520ns, CLK8
	 COMPOUTN  <= '1'  ;
	wait for 300 ns ; --16820ns
	 COMPOUTN <= '0' ;
	wait for 3820 ns ; --20640ns, CLK10
	 COMPOUTN  <= '1'  ;
	wait for 300 ns ; --20940ns
	 COMPOUTN <= '0' ; 
	 wait for 3820 ns ; --20640ns, CLK2c next cycle
	 COMPOUTN  <= '1'  ;
	wait for 300 ns ; --20940ns
	 COMPOUTN <= '0' ; 
	 wait for 3820 ns ; --20640ns, CLK4
	 COMPOUTN  <= '1'  ;
	wait for 300 ns ; --20940ns
	 COMPOUTN <= '0' ; 
	 wait for 3820 ns ; --20640ns, CLK6
	 COMPOUTN  <= '1'  ;
	wait for 300 ns ; --20940ns
	 COMPOUTN <= '0' ; 
	 wait for 3820 ns ; --20640ns, CLK8
	 COMPOUTN  <= '1'  ;
	wait for 300 ns ; --20940ns
	 COMPOUTN <= '0' ; 
	 wait for 3820 ns ; --20640ns, CLK10
	 COMPOUTN  <= '1'  ;
	wait for 300 ns ; --20940ns
	 COMPOUTN <= '0' ; 
	wait for 99900 ns ;
	
-- dumped values till 100 us
	wait;
 End Process;
	
--	  Process
--	Begin
--	 COMPOUTP  <= '0'  ;
--	wait for 4160 ns ; --CLK2
--	 COMPOUTP  <= '1'  ;
--	wait for 300 ns ; --4460ns
--	 COMPOUTP <= '0' ;
--	 wait for 3820 ns ; --8280ns, CLK4
--	 COMPOUTP  <= '1'  ;
--	wait for 300 ns ; --8580ns
--	 COMPOUTP <= '0' ;
--	 wait for 3820 ns ; --12400ns, CLK6
--	 COMPOUTP  <= '1'  ;
--	wait for 300 ns ; --12700ns
--	 COMPOUTP <= '0' ;
--	 wait for 3820 ns ; --16520ns, CLK8
--	 COMPOUTP  <= '1'  ;
--	wait for 300 ns ; --16820ns
--	 COMPOUTP <= '0' ;
--	wait for 3820 ns ; --20640ns, CLK10
--	 COMPOUTP  <= '1'  ;
--	wait for 300 ns ; --20940ns
--	 COMPOUTP <= '0' ; 
--	 wait for 3820 ns ; --20640ns, CLK2
--	 COMPOUTP  <= '1'  ;
--	wait for 300 ns ; --20940ns
--	 COMPOUTP <= '0' ; 
--	 wait for 3820 ns ; --20640ns, CLK4
--	 COMPOUTP  <= '1'  ;
--	wait for 300 ns ; --20940ns
--	 COMPOUTP <= '0' ; 
--	 wait for 3820 ns ; --20640ns, CLK6
--	 COMPOUTP  <= '1'  ;
--	wait for 300 ns ; --20940ns
--	 COMPOUTP <= '0' ; 
--	 wait for 3820 ns ; --20640ns, CLK8
--	 COMPOUTP  <= '1'  ;
--	wait for 300 ns ; --20940ns
--	 COMPOUTP <= '0' ; 
--	 wait for 3820 ns ; --20640ns, CLK10
--	 COMPOUTP  <= '1'  ;
--	wait for 300 ns ; --20940ns
--	 COMPOUTP <= '0' ; 
--	wait for 99900 ns ;
--	
---- dumped values till 100 us
--	wait;
-- End Process;
 
 --COMPOUTP version 2
 Process
	Begin
	 COMPOUTP  <= '0'  ;
	wait for 2100 ns ; --CLK1
	 COMPOUTP  <= '1' ;
	wait for 300 ns ; --2400ns
	 COMPOUTP <= '0' ;
	 wait for 3970 ns ; --6370ns, CLK3
	 COMPOUTP  <= '1'  ;
	wait for 300 ns ; --6670ns
	 COMPOUTP <= '0' ;
	 wait for 3720 ns ; --10390ns, CLK5
	 COMPOUTP  <= '1'  ;
	wait for 300 ns ; --10690ns
	 COMPOUTP <= '0' ;
	wait for 3820 ns ; --14510ns, CLK7
	 COMPOUTP  <= '1'  ;
	wait for 300 ns ; -- 14810ns
	 COMPOUTP <= '0' ;
	wait for 3820 ns ; --18630ns, CLK9
	 COMPOUTP <= '1' ;
	wait for 300 ns ;
	 COMPOUTP <= '0' ;
	 wait for 3670 ns ; --22600ns, CLK1, NEXT CYCLE
	 COMPOUTP <= '1' ;
	 wait for 300 ns; --22900ns
	 COMPOUTP <= '0';
	 wait for 3970 ns ; --6370ns, CLK3
	 COMPOUTP  <= '1'  ;
	wait for 300 ns ; --6670ns
	 COMPOUTP <= '0' ;
	 wait for 3970 ns ; --6370ns, CLK5
	 COMPOUTP  <= '1'  ;
	wait for 300 ns ; --6670ns
	 COMPOUTP <= '0' ;
	 wait for 3970 ns ; --6370ns, CLK7
	 COMPOUTP  <= '1'  ;
	wait for 300 ns ; --6670ns
	 COMPOUTP <= '0' ;
	 wait for 3970 ns ; --6370ns, CLK9
	 COMPOUTP  <= '1'  ;
	wait for 300 ns ; --6670ns
	 COMPOUTP <= '0' ;
	wait for 99900 ns ;
	
-- dumped values till 100 us
	wait;
 End Process;
 
END;
