-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed May 22 19:16:32 2024
-- Host        : always20006 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top base_auto_cc_1 -prefix
--               base_auto_cc_1_ base_auto_cc_1_sim_netlist.vhdl
-- Design      : base_auto_cc_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of base_auto_cc_1_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of base_auto_cc_1_xpm_cdc_async_rst : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of base_auto_cc_1_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of base_auto_cc_1_xpm_cdc_async_rst : entity is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of base_auto_cc_1_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of base_auto_cc_1_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of base_auto_cc_1_xpm_cdc_async_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of base_auto_cc_1_xpm_cdc_async_rst : entity is "ASYNC_RST";
end base_auto_cc_1_xpm_cdc_async_rst;

architecture STRUCTURE of base_auto_cc_1_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_async_rst__10\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \base_auto_cc_1_xpm_cdc_async_rst__10\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_async_rst__10\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_async_rst__10\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \base_auto_cc_1_xpm_cdc_async_rst__10\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_async_rst__10\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \base_auto_cc_1_xpm_cdc_async_rst__10\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_async_rst__10\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_async_rst__10\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_async_rst__10\ : entity is "ASYNC_RST";
end \base_auto_cc_1_xpm_cdc_async_rst__10\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_async_rst__10\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_async_rst__11\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \base_auto_cc_1_xpm_cdc_async_rst__11\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_async_rst__11\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_async_rst__11\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \base_auto_cc_1_xpm_cdc_async_rst__11\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_async_rst__11\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \base_auto_cc_1_xpm_cdc_async_rst__11\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_async_rst__11\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_async_rst__11\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_async_rst__11\ : entity is "ASYNC_RST";
end \base_auto_cc_1_xpm_cdc_async_rst__11\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_async_rst__11\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_async_rst__12\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \base_auto_cc_1_xpm_cdc_async_rst__12\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_async_rst__12\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_async_rst__12\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \base_auto_cc_1_xpm_cdc_async_rst__12\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_async_rst__12\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \base_auto_cc_1_xpm_cdc_async_rst__12\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_async_rst__12\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_async_rst__12\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_async_rst__12\ : entity is "ASYNC_RST";
end \base_auto_cc_1_xpm_cdc_async_rst__12\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_async_rst__12\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_async_rst__13\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \base_auto_cc_1_xpm_cdc_async_rst__13\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_async_rst__13\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_async_rst__13\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \base_auto_cc_1_xpm_cdc_async_rst__13\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_async_rst__13\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \base_auto_cc_1_xpm_cdc_async_rst__13\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_async_rst__13\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_async_rst__13\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_async_rst__13\ : entity is "ASYNC_RST";
end \base_auto_cc_1_xpm_cdc_async_rst__13\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_async_rst__13\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_async_rst__5\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \base_auto_cc_1_xpm_cdc_async_rst__5\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_async_rst__5\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_async_rst__5\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \base_auto_cc_1_xpm_cdc_async_rst__5\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_async_rst__5\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \base_auto_cc_1_xpm_cdc_async_rst__5\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_async_rst__5\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_async_rst__5\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_async_rst__5\ : entity is "ASYNC_RST";
end \base_auto_cc_1_xpm_cdc_async_rst__5\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_async_rst__5\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_async_rst__6\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \base_auto_cc_1_xpm_cdc_async_rst__6\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_async_rst__6\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_async_rst__6\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \base_auto_cc_1_xpm_cdc_async_rst__6\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_async_rst__6\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \base_auto_cc_1_xpm_cdc_async_rst__6\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_async_rst__6\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_async_rst__6\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_async_rst__6\ : entity is "ASYNC_RST";
end \base_auto_cc_1_xpm_cdc_async_rst__6\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_async_rst__6\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_async_rst__7\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \base_auto_cc_1_xpm_cdc_async_rst__7\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_async_rst__7\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_async_rst__7\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \base_auto_cc_1_xpm_cdc_async_rst__7\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_async_rst__7\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \base_auto_cc_1_xpm_cdc_async_rst__7\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_async_rst__7\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_async_rst__7\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_async_rst__7\ : entity is "ASYNC_RST";
end \base_auto_cc_1_xpm_cdc_async_rst__7\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_async_rst__7\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_async_rst__8\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \base_auto_cc_1_xpm_cdc_async_rst__8\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_async_rst__8\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_async_rst__8\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \base_auto_cc_1_xpm_cdc_async_rst__8\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_async_rst__8\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \base_auto_cc_1_xpm_cdc_async_rst__8\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_async_rst__8\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_async_rst__8\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_async_rst__8\ : entity is "ASYNC_RST";
end \base_auto_cc_1_xpm_cdc_async_rst__8\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_async_rst__8\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_async_rst__9\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \base_auto_cc_1_xpm_cdc_async_rst__9\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_async_rst__9\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_async_rst__9\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \base_auto_cc_1_xpm_cdc_async_rst__9\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_async_rst__9\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \base_auto_cc_1_xpm_cdc_async_rst__9\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_async_rst__9\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_async_rst__9\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_async_rst__9\ : entity is "ASYNC_RST";
end \base_auto_cc_1_xpm_cdc_async_rst__9\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_async_rst__9\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of base_auto_cc_1_xpm_cdc_gray : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of base_auto_cc_1_xpm_cdc_gray : entity is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of base_auto_cc_1_xpm_cdc_gray : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of base_auto_cc_1_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of base_auto_cc_1_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of base_auto_cc_1_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of base_auto_cc_1_xpm_cdc_gray : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of base_auto_cc_1_xpm_cdc_gray : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of base_auto_cc_1_xpm_cdc_gray : entity is "GRAY";
end base_auto_cc_1_xpm_cdc_gray;

architecture STRUCTURE of base_auto_cc_1_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair5";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(0),
      I1 => \dest_graysync_ff[2]\(2),
      I2 => \dest_graysync_ff[2]\(3),
      I3 => \dest_graysync_ff[2]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(1),
      I1 => \dest_graysync_ff[2]\(3),
      I2 => \dest_graysync_ff[2]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(2),
      I1 => \dest_graysync_ff[2]\(3),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_gray__10\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_gray__10\ : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_gray__10\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_gray__10\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \base_auto_cc_1_xpm_cdc_gray__10\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_gray__10\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \base_auto_cc_1_xpm_cdc_gray__10\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_gray__10\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \base_auto_cc_1_xpm_cdc_gray__10\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_gray__10\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_gray__10\ : entity is "GRAY";
end \base_auto_cc_1_xpm_cdc_gray__10\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_gray__10\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair8";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(0),
      I1 => \dest_graysync_ff[2]\(2),
      I2 => \dest_graysync_ff[2]\(3),
      I3 => \dest_graysync_ff[2]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(1),
      I1 => \dest_graysync_ff[2]\(3),
      I2 => \dest_graysync_ff[2]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(2),
      I1 => \dest_graysync_ff[2]\(3),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_gray__11\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_gray__11\ : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_gray__11\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_gray__11\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \base_auto_cc_1_xpm_cdc_gray__11\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_gray__11\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \base_auto_cc_1_xpm_cdc_gray__11\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_gray__11\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \base_auto_cc_1_xpm_cdc_gray__11\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_gray__11\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_gray__11\ : entity is "GRAY";
end \base_auto_cc_1_xpm_cdc_gray__11\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_gray__11\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair9";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(0),
      I1 => \dest_graysync_ff[2]\(2),
      I2 => \dest_graysync_ff[2]\(3),
      I3 => \dest_graysync_ff[2]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(1),
      I1 => \dest_graysync_ff[2]\(3),
      I2 => \dest_graysync_ff[2]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(2),
      I1 => \dest_graysync_ff[2]\(3),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_gray__12\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_gray__12\ : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_gray__12\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_gray__12\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \base_auto_cc_1_xpm_cdc_gray__12\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_gray__12\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \base_auto_cc_1_xpm_cdc_gray__12\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_gray__12\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \base_auto_cc_1_xpm_cdc_gray__12\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_gray__12\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_gray__12\ : entity is "GRAY";
end \base_auto_cc_1_xpm_cdc_gray__12\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_gray__12\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair12";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(0),
      I1 => \dest_graysync_ff[2]\(2),
      I2 => \dest_graysync_ff[2]\(3),
      I3 => \dest_graysync_ff[2]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(1),
      I1 => \dest_graysync_ff[2]\(3),
      I2 => \dest_graysync_ff[2]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(2),
      I1 => \dest_graysync_ff[2]\(3),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_gray__13\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_gray__13\ : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_gray__13\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_gray__13\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \base_auto_cc_1_xpm_cdc_gray__13\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_gray__13\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \base_auto_cc_1_xpm_cdc_gray__13\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_gray__13\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \base_auto_cc_1_xpm_cdc_gray__13\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_gray__13\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_gray__13\ : entity is "GRAY";
end \base_auto_cc_1_xpm_cdc_gray__13\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_gray__13\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair13";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(0),
      I1 => \dest_graysync_ff[2]\(2),
      I2 => \dest_graysync_ff[2]\(3),
      I3 => \dest_graysync_ff[2]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(1),
      I1 => \dest_graysync_ff[2]\(3),
      I2 => \dest_graysync_ff[2]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(2),
      I1 => \dest_graysync_ff[2]\(3),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_gray__14\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_gray__14\ : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_gray__14\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_gray__14\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \base_auto_cc_1_xpm_cdc_gray__14\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_gray__14\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \base_auto_cc_1_xpm_cdc_gray__14\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_gray__14\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \base_auto_cc_1_xpm_cdc_gray__14\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_gray__14\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_gray__14\ : entity is "GRAY";
end \base_auto_cc_1_xpm_cdc_gray__14\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_gray__14\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair16";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(0),
      I1 => \dest_graysync_ff[2]\(2),
      I2 => \dest_graysync_ff[2]\(3),
      I3 => \dest_graysync_ff[2]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(1),
      I1 => \dest_graysync_ff[2]\(3),
      I2 => \dest_graysync_ff[2]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(2),
      I1 => \dest_graysync_ff[2]\(3),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_gray__15\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_gray__15\ : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_gray__15\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_gray__15\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \base_auto_cc_1_xpm_cdc_gray__15\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_gray__15\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \base_auto_cc_1_xpm_cdc_gray__15\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_gray__15\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \base_auto_cc_1_xpm_cdc_gray__15\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_gray__15\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_gray__15\ : entity is "GRAY";
end \base_auto_cc_1_xpm_cdc_gray__15\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_gray__15\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair17";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(0),
      I1 => \dest_graysync_ff[2]\(2),
      I2 => \dest_graysync_ff[2]\(3),
      I3 => \dest_graysync_ff[2]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(1),
      I1 => \dest_graysync_ff[2]\(3),
      I2 => \dest_graysync_ff[2]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(2),
      I1 => \dest_graysync_ff[2]\(3),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_gray__16\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_gray__16\ : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_gray__16\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_gray__16\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \base_auto_cc_1_xpm_cdc_gray__16\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_gray__16\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \base_auto_cc_1_xpm_cdc_gray__16\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_gray__16\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \base_auto_cc_1_xpm_cdc_gray__16\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_gray__16\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_gray__16\ : entity is "GRAY";
end \base_auto_cc_1_xpm_cdc_gray__16\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_gray__16\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair0";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(0),
      I1 => \dest_graysync_ff[2]\(2),
      I2 => \dest_graysync_ff[2]\(3),
      I3 => \dest_graysync_ff[2]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(1),
      I1 => \dest_graysync_ff[2]\(3),
      I2 => \dest_graysync_ff[2]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(2),
      I1 => \dest_graysync_ff[2]\(3),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_gray__17\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_gray__17\ : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_gray__17\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_gray__17\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \base_auto_cc_1_xpm_cdc_gray__17\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_gray__17\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \base_auto_cc_1_xpm_cdc_gray__17\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_gray__17\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \base_auto_cc_1_xpm_cdc_gray__17\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_gray__17\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_gray__17\ : entity is "GRAY";
end \base_auto_cc_1_xpm_cdc_gray__17\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_gray__17\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair1";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(0),
      I1 => \dest_graysync_ff[2]\(2),
      I2 => \dest_graysync_ff[2]\(3),
      I3 => \dest_graysync_ff[2]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(1),
      I1 => \dest_graysync_ff[2]\(3),
      I2 => \dest_graysync_ff[2]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(2),
      I1 => \dest_graysync_ff[2]\(3),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_gray__18\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_gray__18\ : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_gray__18\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_gray__18\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \base_auto_cc_1_xpm_cdc_gray__18\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_gray__18\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \base_auto_cc_1_xpm_cdc_gray__18\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_gray__18\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \base_auto_cc_1_xpm_cdc_gray__18\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_gray__18\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_gray__18\ : entity is "GRAY";
end \base_auto_cc_1_xpm_cdc_gray__18\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_gray__18\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair4";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(0),
      I1 => \dest_graysync_ff[2]\(2),
      I2 => \dest_graysync_ff[2]\(3),
      I3 => \dest_graysync_ff[2]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(1),
      I1 => \dest_graysync_ff[2]\(3),
      I2 => \dest_graysync_ff[2]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[2]\(2),
      I1 => \dest_graysync_ff[2]\(3),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of base_auto_cc_1_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of base_auto_cc_1_xpm_cdc_single : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of base_auto_cc_1_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of base_auto_cc_1_xpm_cdc_single : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of base_auto_cc_1_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of base_auto_cc_1_xpm_cdc_single : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of base_auto_cc_1_xpm_cdc_single : entity is "SINGLE";
end base_auto_cc_1_xpm_cdc_single;

architecture STRUCTURE of base_auto_cc_1_xpm_cdc_single is
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
src_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in,
      Q => p_0_in(0),
      R => '0'
    );
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => p_0_in(0),
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_single__3\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__3\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__3\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_single__3\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_single__3\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \base_auto_cc_1_xpm_cdc_single__3\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_single__3\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_single__3\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_single__3\ : entity is "SINGLE";
end \base_auto_cc_1_xpm_cdc_single__3\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_single__3\ is
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
src_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in,
      Q => p_0_in(0),
      R => '0'
    );
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => p_0_in(0),
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_single__4\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__4\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__4\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_single__4\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_single__4\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \base_auto_cc_1_xpm_cdc_single__4\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_single__4\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_single__4\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_single__4\ : entity is "SINGLE";
end \base_auto_cc_1_xpm_cdc_single__4\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_single__4\ is
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
src_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in,
      Q => p_0_in(0),
      R => '0'
    );
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => p_0_in(0),
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_single__parameterized1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_single__parameterized1\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_single__parameterized1\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \base_auto_cc_1_xpm_cdc_single__parameterized1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_single__parameterized1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_single__parameterized1\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_single__parameterized1\ : entity is "SINGLE";
end \base_auto_cc_1_xpm_cdc_single__parameterized1\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_single__parameterized1\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_single__parameterized1__10\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1__10\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1__10\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_single__parameterized1__10\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_single__parameterized1__10\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \base_auto_cc_1_xpm_cdc_single__parameterized1__10\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_single__parameterized1__10\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_single__parameterized1__10\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_single__parameterized1__10\ : entity is "SINGLE";
end \base_auto_cc_1_xpm_cdc_single__parameterized1__10\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_single__parameterized1__10\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_single__parameterized1__11\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1__11\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1__11\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_single__parameterized1__11\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_single__parameterized1__11\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \base_auto_cc_1_xpm_cdc_single__parameterized1__11\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_single__parameterized1__11\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_single__parameterized1__11\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_single__parameterized1__11\ : entity is "SINGLE";
end \base_auto_cc_1_xpm_cdc_single__parameterized1__11\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_single__parameterized1__11\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_single__parameterized1__12\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1__12\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1__12\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_single__parameterized1__12\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_single__parameterized1__12\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \base_auto_cc_1_xpm_cdc_single__parameterized1__12\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_single__parameterized1__12\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_single__parameterized1__12\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_single__parameterized1__12\ : entity is "SINGLE";
end \base_auto_cc_1_xpm_cdc_single__parameterized1__12\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_single__parameterized1__12\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_single__parameterized1__13\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1__13\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1__13\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_single__parameterized1__13\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_single__parameterized1__13\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \base_auto_cc_1_xpm_cdc_single__parameterized1__13\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_single__parameterized1__13\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_single__parameterized1__13\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_single__parameterized1__13\ : entity is "SINGLE";
end \base_auto_cc_1_xpm_cdc_single__parameterized1__13\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_single__parameterized1__13\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_single__parameterized1__14\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1__14\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1__14\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_single__parameterized1__14\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_single__parameterized1__14\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \base_auto_cc_1_xpm_cdc_single__parameterized1__14\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_single__parameterized1__14\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_single__parameterized1__14\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_single__parameterized1__14\ : entity is "SINGLE";
end \base_auto_cc_1_xpm_cdc_single__parameterized1__14\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_single__parameterized1__14\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_single__parameterized1__15\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1__15\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1__15\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_single__parameterized1__15\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_single__parameterized1__15\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \base_auto_cc_1_xpm_cdc_single__parameterized1__15\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_single__parameterized1__15\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_single__parameterized1__15\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_single__parameterized1__15\ : entity is "SINGLE";
end \base_auto_cc_1_xpm_cdc_single__parameterized1__15\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_single__parameterized1__15\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_single__parameterized1__16\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1__16\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1__16\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_single__parameterized1__16\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_single__parameterized1__16\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \base_auto_cc_1_xpm_cdc_single__parameterized1__16\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_single__parameterized1__16\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_single__parameterized1__16\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_single__parameterized1__16\ : entity is "SINGLE";
end \base_auto_cc_1_xpm_cdc_single__parameterized1__16\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_single__parameterized1__16\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_single__parameterized1__17\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1__17\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1__17\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_single__parameterized1__17\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_single__parameterized1__17\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \base_auto_cc_1_xpm_cdc_single__parameterized1__17\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_single__parameterized1__17\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_single__parameterized1__17\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_single__parameterized1__17\ : entity is "SINGLE";
end \base_auto_cc_1_xpm_cdc_single__parameterized1__17\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_single__parameterized1__17\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_xpm_cdc_single__parameterized1__18\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1__18\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \base_auto_cc_1_xpm_cdc_single__parameterized1__18\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_xpm_cdc_single__parameterized1__18\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \base_auto_cc_1_xpm_cdc_single__parameterized1__18\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \base_auto_cc_1_xpm_cdc_single__parameterized1__18\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \base_auto_cc_1_xpm_cdc_single__parameterized1__18\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \base_auto_cc_1_xpm_cdc_single__parameterized1__18\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \base_auto_cc_1_xpm_cdc_single__parameterized1__18\ : entity is "SINGLE";
end \base_auto_cc_1_xpm_cdc_single__parameterized1__18\;

architecture STRUCTURE of \base_auto_cc_1_xpm_cdc_single__parameterized1__18\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_dmem is
  port (
    dout_i : out STD_LOGIC_VECTOR ( 61 downto 0 );
    s_aclk : in STD_LOGIC;
    EN : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 61 downto 0 );
    count_d1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[61]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC
  );
end base_auto_cc_1_dmem;

architecture STRUCTURE of base_auto_cc_1_dmem is
  signal p_0_out : STD_LOGIC_VECTOR ( 61 downto 0 );
  signal NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_60_61_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_60_61_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_60_61_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_0_5 : label is "";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of RAM_reg_0_15_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of RAM_reg_0_15_0_5 : label is 15;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of RAM_reg_0_15_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of RAM_reg_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_12_17 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_12_17 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_12_17 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_12_17 : label is 12;
  attribute ram_slice_end of RAM_reg_0_15_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_18_23 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_18_23 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_18_23 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_18_23 : label is 18;
  attribute ram_slice_end of RAM_reg_0_15_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_24_29 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_24_29 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_24_29 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_24_29 : label is 24;
  attribute ram_slice_end of RAM_reg_0_15_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_30_35 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_30_35 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_30_35 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_30_35 : label is 30;
  attribute ram_slice_end of RAM_reg_0_15_30_35 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_36_41 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_36_41 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_36_41 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_36_41 : label is 36;
  attribute ram_slice_end of RAM_reg_0_15_36_41 : label is 41;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_42_47 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_42_47 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_42_47 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_42_47 : label is 42;
  attribute ram_slice_end of RAM_reg_0_15_42_47 : label is 47;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_48_53 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_48_53 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_48_53 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_48_53 : label is 48;
  attribute ram_slice_end of RAM_reg_0_15_48_53 : label is 53;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_54_59 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_54_59 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_54_59 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_54_59 : label is 54;
  attribute ram_slice_end of RAM_reg_0_15_54_59 : label is 59;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_60_61 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_60_61 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_60_61 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_60_61 : label is 60;
  attribute ram_slice_end of RAM_reg_0_15_60_61 : label is 61;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_6_11 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_6_11 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_6_11 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_6_11 : label is 6;
  attribute ram_slice_end of RAM_reg_0_15_6_11 : label is 11;
begin
RAM_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => DI(1 downto 0),
      DIB(1 downto 0) => DI(3 downto 2),
      DIC(1 downto 0) => DI(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(1 downto 0),
      DOB(1 downto 0) => p_0_out(3 downto 2),
      DOC(1 downto 0) => p_0_out(5 downto 4),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_15_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => DI(13 downto 12),
      DIB(1 downto 0) => DI(15 downto 14),
      DIC(1 downto 0) => DI(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(13 downto 12),
      DOB(1 downto 0) => p_0_out(15 downto 14),
      DOC(1 downto 0) => p_0_out(17 downto 16),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_15_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => DI(19 downto 18),
      DIB(1 downto 0) => DI(21 downto 20),
      DIC(1 downto 0) => DI(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(19 downto 18),
      DOB(1 downto 0) => p_0_out(21 downto 20),
      DOC(1 downto 0) => p_0_out(23 downto 22),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_15_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => DI(25 downto 24),
      DIB(1 downto 0) => DI(27 downto 26),
      DIC(1 downto 0) => DI(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(25 downto 24),
      DOB(1 downto 0) => p_0_out(27 downto 26),
      DOC(1 downto 0) => p_0_out(29 downto 28),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_15_30_35: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => DI(31 downto 30),
      DIB(1 downto 0) => DI(33 downto 32),
      DIC(1 downto 0) => DI(35 downto 34),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(31 downto 30),
      DOB(1 downto 0) => p_0_out(33 downto 32),
      DOC(1 downto 0) => p_0_out(35 downto 34),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_15_36_41: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => DI(37 downto 36),
      DIB(1 downto 0) => DI(39 downto 38),
      DIC(1 downto 0) => DI(41 downto 40),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(37 downto 36),
      DOB(1 downto 0) => p_0_out(39 downto 38),
      DOC(1 downto 0) => p_0_out(41 downto 40),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_15_42_47: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => DI(43 downto 42),
      DIB(1 downto 0) => DI(45 downto 44),
      DIC(1 downto 0) => DI(47 downto 46),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(43 downto 42),
      DOB(1 downto 0) => p_0_out(45 downto 44),
      DOC(1 downto 0) => p_0_out(47 downto 46),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_15_48_53: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => DI(49 downto 48),
      DIB(1 downto 0) => DI(51 downto 50),
      DIC(1 downto 0) => DI(53 downto 52),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(49 downto 48),
      DOB(1 downto 0) => p_0_out(51 downto 50),
      DOC(1 downto 0) => p_0_out(53 downto 52),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_15_54_59: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => DI(55 downto 54),
      DIB(1 downto 0) => DI(57 downto 56),
      DIC(1 downto 0) => DI(59 downto 58),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(55 downto 54),
      DOB(1 downto 0) => p_0_out(57 downto 56),
      DOC(1 downto 0) => p_0_out(59 downto 58),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_15_60_61: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => DI(61 downto 60),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(61 downto 60),
      DOB(1 downto 0) => NLW_RAM_reg_0_15_60_61_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_RAM_reg_0_15_60_61_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_60_61_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_15_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => DI(7 downto 6),
      DIB(1 downto 0) => DI(9 downto 8),
      DIC(1 downto 0) => DI(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(7 downto 6),
      DOB(1 downto 0) => p_0_out(9 downto 8),
      DOC(1 downto 0) => p_0_out(11 downto 10),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(0),
      Q => dout_i(0),
      R => '0'
    );
\gpr1.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(10),
      Q => dout_i(10),
      R => '0'
    );
\gpr1.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(11),
      Q => dout_i(11),
      R => '0'
    );
\gpr1.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(12),
      Q => dout_i(12),
      R => '0'
    );
\gpr1.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(13),
      Q => dout_i(13),
      R => '0'
    );
\gpr1.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(14),
      Q => dout_i(14),
      R => '0'
    );
\gpr1.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(15),
      Q => dout_i(15),
      R => '0'
    );
\gpr1.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(16),
      Q => dout_i(16),
      R => '0'
    );
\gpr1.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(17),
      Q => dout_i(17),
      R => '0'
    );
\gpr1.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(18),
      Q => dout_i(18),
      R => '0'
    );
\gpr1.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(19),
      Q => dout_i(19),
      R => '0'
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(1),
      Q => dout_i(1),
      R => '0'
    );
\gpr1.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(20),
      Q => dout_i(20),
      R => '0'
    );
\gpr1.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(21),
      Q => dout_i(21),
      R => '0'
    );
\gpr1.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(22),
      Q => dout_i(22),
      R => '0'
    );
\gpr1.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(23),
      Q => dout_i(23),
      R => '0'
    );
\gpr1.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(24),
      Q => dout_i(24),
      R => '0'
    );
\gpr1.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(25),
      Q => dout_i(25),
      R => '0'
    );
\gpr1.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(26),
      Q => dout_i(26),
      R => '0'
    );
\gpr1.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(27),
      Q => dout_i(27),
      R => '0'
    );
\gpr1.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(28),
      Q => dout_i(28),
      R => '0'
    );
\gpr1.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(29),
      Q => dout_i(29),
      R => '0'
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(2),
      Q => dout_i(2),
      R => '0'
    );
\gpr1.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(30),
      Q => dout_i(30),
      R => '0'
    );
\gpr1.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(31),
      Q => dout_i(31),
      R => '0'
    );
\gpr1.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(32),
      Q => dout_i(32),
      R => '0'
    );
\gpr1.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(33),
      Q => dout_i(33),
      R => '0'
    );
\gpr1.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(34),
      Q => dout_i(34),
      R => '0'
    );
\gpr1.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(35),
      Q => dout_i(35),
      R => '0'
    );
\gpr1.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(36),
      Q => dout_i(36),
      R => '0'
    );
\gpr1.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(37),
      Q => dout_i(37),
      R => '0'
    );
\gpr1.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(38),
      Q => dout_i(38),
      R => '0'
    );
\gpr1.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(39),
      Q => dout_i(39),
      R => '0'
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(3),
      Q => dout_i(3),
      R => '0'
    );
\gpr1.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(40),
      Q => dout_i(40),
      R => '0'
    );
\gpr1.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(41),
      Q => dout_i(41),
      R => '0'
    );
\gpr1.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(42),
      Q => dout_i(42),
      R => '0'
    );
\gpr1.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(43),
      Q => dout_i(43),
      R => '0'
    );
\gpr1.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(44),
      Q => dout_i(44),
      R => '0'
    );
\gpr1.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(45),
      Q => dout_i(45),
      R => '0'
    );
\gpr1.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(46),
      Q => dout_i(46),
      R => '0'
    );
\gpr1.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(47),
      Q => dout_i(47),
      R => '0'
    );
\gpr1.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(48),
      Q => dout_i(48),
      R => '0'
    );
\gpr1.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(49),
      Q => dout_i(49),
      R => '0'
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(4),
      Q => dout_i(4),
      R => '0'
    );
\gpr1.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(50),
      Q => dout_i(50),
      R => '0'
    );
\gpr1.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(51),
      Q => dout_i(51),
      R => '0'
    );
\gpr1.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(52),
      Q => dout_i(52),
      R => '0'
    );
\gpr1.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(53),
      Q => dout_i(53),
      R => '0'
    );
\gpr1.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(54),
      Q => dout_i(54),
      R => '0'
    );
\gpr1.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(55),
      Q => dout_i(55),
      R => '0'
    );
\gpr1.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(56),
      Q => dout_i(56),
      R => '0'
    );
\gpr1.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(57),
      Q => dout_i(57),
      R => '0'
    );
\gpr1.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(58),
      Q => dout_i(58),
      R => '0'
    );
\gpr1.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(59),
      Q => dout_i(59),
      R => '0'
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(5),
      Q => dout_i(5),
      R => '0'
    );
\gpr1.dout_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(60),
      Q => dout_i(60),
      R => '0'
    );
\gpr1.dout_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(61),
      Q => dout_i(61),
      R => '0'
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(6),
      Q => dout_i(6),
      R => '0'
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(7),
      Q => dout_i(7),
      R => '0'
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(8),
      Q => dout_i(8),
      R => '0'
    );
\gpr1.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => p_0_out(9),
      Q => dout_i(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_dmem_24 is
  port (
    dout_i : out STD_LOGIC_VECTOR ( 61 downto 0 );
    s_aclk : in STD_LOGIC;
    I67 : in STD_LOGIC;
    I474 : in STD_LOGIC_VECTOR ( 61 downto 0 );
    count_d1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[61]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_dmem_24 : entity is "dmem";
end base_auto_cc_1_dmem_24;

architecture STRUCTURE of base_auto_cc_1_dmem_24 is
  signal RAM_reg_0_15_0_5_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_30_35_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_30_35_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_30_35_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_30_35_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_30_35_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_30_35_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_36_41_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_36_41_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_36_41_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_36_41_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_36_41_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_36_41_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_42_47_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_42_47_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_42_47_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_42_47_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_42_47_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_42_47_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_48_53_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_48_53_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_48_53_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_48_53_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_48_53_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_48_53_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_54_59_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_54_59_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_54_59_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_54_59_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_54_59_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_54_59_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_60_61_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_60_61_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_5 : STD_LOGIC;
  signal NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_60_61_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_60_61_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_60_61_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_0_5 : label is "";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of RAM_reg_0_15_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of RAM_reg_0_15_0_5 : label is 15;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of RAM_reg_0_15_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of RAM_reg_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_12_17 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_12_17 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_12_17 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_12_17 : label is 12;
  attribute ram_slice_end of RAM_reg_0_15_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_18_23 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_18_23 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_18_23 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_18_23 : label is 18;
  attribute ram_slice_end of RAM_reg_0_15_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_24_29 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_24_29 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_24_29 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_24_29 : label is 24;
  attribute ram_slice_end of RAM_reg_0_15_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_30_35 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_30_35 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_30_35 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_30_35 : label is 30;
  attribute ram_slice_end of RAM_reg_0_15_30_35 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_36_41 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_36_41 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_36_41 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_36_41 : label is 36;
  attribute ram_slice_end of RAM_reg_0_15_36_41 : label is 41;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_42_47 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_42_47 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_42_47 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_42_47 : label is 42;
  attribute ram_slice_end of RAM_reg_0_15_42_47 : label is 47;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_48_53 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_48_53 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_48_53 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_48_53 : label is 48;
  attribute ram_slice_end of RAM_reg_0_15_48_53 : label is 53;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_54_59 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_54_59 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_54_59 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_54_59 : label is 54;
  attribute ram_slice_end of RAM_reg_0_15_54_59 : label is 59;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_60_61 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_60_61 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_60_61 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_60_61 : label is 60;
  attribute ram_slice_end of RAM_reg_0_15_60_61 : label is 61;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_6_11 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_6_11 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_6_11 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_6_11 : label is 6;
  attribute ram_slice_end of RAM_reg_0_15_6_11 : label is 11;
begin
RAM_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I474(1 downto 0),
      DIB(1 downto 0) => I474(3 downto 2),
      DIC(1 downto 0) => I474(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_0_5_n_0,
      DOA(0) => RAM_reg_0_15_0_5_n_1,
      DOB(1) => RAM_reg_0_15_0_5_n_2,
      DOB(0) => RAM_reg_0_15_0_5_n_3,
      DOC(1) => RAM_reg_0_15_0_5_n_4,
      DOC(0) => RAM_reg_0_15_0_5_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I67
    );
RAM_reg_0_15_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I474(13 downto 12),
      DIB(1 downto 0) => I474(15 downto 14),
      DIC(1 downto 0) => I474(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_12_17_n_0,
      DOA(0) => RAM_reg_0_15_12_17_n_1,
      DOB(1) => RAM_reg_0_15_12_17_n_2,
      DOB(0) => RAM_reg_0_15_12_17_n_3,
      DOC(1) => RAM_reg_0_15_12_17_n_4,
      DOC(0) => RAM_reg_0_15_12_17_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I67
    );
RAM_reg_0_15_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I474(19 downto 18),
      DIB(1 downto 0) => I474(21 downto 20),
      DIC(1 downto 0) => I474(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_18_23_n_0,
      DOA(0) => RAM_reg_0_15_18_23_n_1,
      DOB(1) => RAM_reg_0_15_18_23_n_2,
      DOB(0) => RAM_reg_0_15_18_23_n_3,
      DOC(1) => RAM_reg_0_15_18_23_n_4,
      DOC(0) => RAM_reg_0_15_18_23_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I67
    );
RAM_reg_0_15_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I474(25 downto 24),
      DIB(1 downto 0) => I474(27 downto 26),
      DIC(1 downto 0) => I474(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_24_29_n_0,
      DOA(0) => RAM_reg_0_15_24_29_n_1,
      DOB(1) => RAM_reg_0_15_24_29_n_2,
      DOB(0) => RAM_reg_0_15_24_29_n_3,
      DOC(1) => RAM_reg_0_15_24_29_n_4,
      DOC(0) => RAM_reg_0_15_24_29_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I67
    );
RAM_reg_0_15_30_35: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I474(31 downto 30),
      DIB(1 downto 0) => I474(33 downto 32),
      DIC(1 downto 0) => I474(35 downto 34),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_30_35_n_0,
      DOA(0) => RAM_reg_0_15_30_35_n_1,
      DOB(1) => RAM_reg_0_15_30_35_n_2,
      DOB(0) => RAM_reg_0_15_30_35_n_3,
      DOC(1) => RAM_reg_0_15_30_35_n_4,
      DOC(0) => RAM_reg_0_15_30_35_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I67
    );
RAM_reg_0_15_36_41: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I474(37 downto 36),
      DIB(1 downto 0) => I474(39 downto 38),
      DIC(1 downto 0) => I474(41 downto 40),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_36_41_n_0,
      DOA(0) => RAM_reg_0_15_36_41_n_1,
      DOB(1) => RAM_reg_0_15_36_41_n_2,
      DOB(0) => RAM_reg_0_15_36_41_n_3,
      DOC(1) => RAM_reg_0_15_36_41_n_4,
      DOC(0) => RAM_reg_0_15_36_41_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I67
    );
RAM_reg_0_15_42_47: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I474(43 downto 42),
      DIB(1 downto 0) => I474(45 downto 44),
      DIC(1 downto 0) => I474(47 downto 46),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_42_47_n_0,
      DOA(0) => RAM_reg_0_15_42_47_n_1,
      DOB(1) => RAM_reg_0_15_42_47_n_2,
      DOB(0) => RAM_reg_0_15_42_47_n_3,
      DOC(1) => RAM_reg_0_15_42_47_n_4,
      DOC(0) => RAM_reg_0_15_42_47_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I67
    );
RAM_reg_0_15_48_53: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I474(49 downto 48),
      DIB(1 downto 0) => I474(51 downto 50),
      DIC(1 downto 0) => I474(53 downto 52),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_48_53_n_0,
      DOA(0) => RAM_reg_0_15_48_53_n_1,
      DOB(1) => RAM_reg_0_15_48_53_n_2,
      DOB(0) => RAM_reg_0_15_48_53_n_3,
      DOC(1) => RAM_reg_0_15_48_53_n_4,
      DOC(0) => RAM_reg_0_15_48_53_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I67
    );
RAM_reg_0_15_54_59: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I474(55 downto 54),
      DIB(1 downto 0) => I474(57 downto 56),
      DIC(1 downto 0) => I474(59 downto 58),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_54_59_n_0,
      DOA(0) => RAM_reg_0_15_54_59_n_1,
      DOB(1) => RAM_reg_0_15_54_59_n_2,
      DOB(0) => RAM_reg_0_15_54_59_n_3,
      DOC(1) => RAM_reg_0_15_54_59_n_4,
      DOC(0) => RAM_reg_0_15_54_59_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I67
    );
RAM_reg_0_15_60_61: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I474(61 downto 60),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_60_61_n_0,
      DOA(0) => RAM_reg_0_15_60_61_n_1,
      DOB(1 downto 0) => NLW_RAM_reg_0_15_60_61_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_RAM_reg_0_15_60_61_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_60_61_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I67
    );
RAM_reg_0_15_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I474(7 downto 6),
      DIB(1 downto 0) => I474(9 downto 8),
      DIC(1 downto 0) => I474(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_6_11_n_0,
      DOA(0) => RAM_reg_0_15_6_11_n_1,
      DOB(1) => RAM_reg_0_15_6_11_n_2,
      DOB(0) => RAM_reg_0_15_6_11_n_3,
      DOC(1) => RAM_reg_0_15_6_11_n_4,
      DOC(0) => RAM_reg_0_15_6_11_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I67
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_0_5_n_1,
      Q => dout_i(0),
      R => '0'
    );
\gpr1.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_6_11_n_5,
      Q => dout_i(10),
      R => '0'
    );
\gpr1.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_6_11_n_4,
      Q => dout_i(11),
      R => '0'
    );
\gpr1.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_12_17_n_1,
      Q => dout_i(12),
      R => '0'
    );
\gpr1.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_12_17_n_0,
      Q => dout_i(13),
      R => '0'
    );
\gpr1.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_12_17_n_3,
      Q => dout_i(14),
      R => '0'
    );
\gpr1.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_12_17_n_2,
      Q => dout_i(15),
      R => '0'
    );
\gpr1.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_12_17_n_5,
      Q => dout_i(16),
      R => '0'
    );
\gpr1.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_12_17_n_4,
      Q => dout_i(17),
      R => '0'
    );
\gpr1.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_18_23_n_1,
      Q => dout_i(18),
      R => '0'
    );
\gpr1.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_18_23_n_0,
      Q => dout_i(19),
      R => '0'
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_0_5_n_0,
      Q => dout_i(1),
      R => '0'
    );
\gpr1.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_18_23_n_3,
      Q => dout_i(20),
      R => '0'
    );
\gpr1.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_18_23_n_2,
      Q => dout_i(21),
      R => '0'
    );
\gpr1.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_18_23_n_5,
      Q => dout_i(22),
      R => '0'
    );
\gpr1.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_18_23_n_4,
      Q => dout_i(23),
      R => '0'
    );
\gpr1.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_24_29_n_1,
      Q => dout_i(24),
      R => '0'
    );
\gpr1.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_24_29_n_0,
      Q => dout_i(25),
      R => '0'
    );
\gpr1.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_24_29_n_3,
      Q => dout_i(26),
      R => '0'
    );
\gpr1.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_24_29_n_2,
      Q => dout_i(27),
      R => '0'
    );
\gpr1.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_24_29_n_5,
      Q => dout_i(28),
      R => '0'
    );
\gpr1.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_24_29_n_4,
      Q => dout_i(29),
      R => '0'
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_0_5_n_3,
      Q => dout_i(2),
      R => '0'
    );
\gpr1.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_30_35_n_1,
      Q => dout_i(30),
      R => '0'
    );
\gpr1.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_30_35_n_0,
      Q => dout_i(31),
      R => '0'
    );
\gpr1.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_30_35_n_3,
      Q => dout_i(32),
      R => '0'
    );
\gpr1.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_30_35_n_2,
      Q => dout_i(33),
      R => '0'
    );
\gpr1.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_30_35_n_5,
      Q => dout_i(34),
      R => '0'
    );
\gpr1.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_30_35_n_4,
      Q => dout_i(35),
      R => '0'
    );
\gpr1.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_36_41_n_1,
      Q => dout_i(36),
      R => '0'
    );
\gpr1.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_36_41_n_0,
      Q => dout_i(37),
      R => '0'
    );
\gpr1.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_36_41_n_3,
      Q => dout_i(38),
      R => '0'
    );
\gpr1.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_36_41_n_2,
      Q => dout_i(39),
      R => '0'
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_0_5_n_2,
      Q => dout_i(3),
      R => '0'
    );
\gpr1.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_36_41_n_5,
      Q => dout_i(40),
      R => '0'
    );
\gpr1.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_36_41_n_4,
      Q => dout_i(41),
      R => '0'
    );
\gpr1.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_42_47_n_1,
      Q => dout_i(42),
      R => '0'
    );
\gpr1.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_42_47_n_0,
      Q => dout_i(43),
      R => '0'
    );
\gpr1.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_42_47_n_3,
      Q => dout_i(44),
      R => '0'
    );
\gpr1.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_42_47_n_2,
      Q => dout_i(45),
      R => '0'
    );
\gpr1.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_42_47_n_5,
      Q => dout_i(46),
      R => '0'
    );
\gpr1.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_42_47_n_4,
      Q => dout_i(47),
      R => '0'
    );
\gpr1.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_48_53_n_1,
      Q => dout_i(48),
      R => '0'
    );
\gpr1.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_48_53_n_0,
      Q => dout_i(49),
      R => '0'
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_0_5_n_5,
      Q => dout_i(4),
      R => '0'
    );
\gpr1.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_48_53_n_3,
      Q => dout_i(50),
      R => '0'
    );
\gpr1.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_48_53_n_2,
      Q => dout_i(51),
      R => '0'
    );
\gpr1.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_48_53_n_5,
      Q => dout_i(52),
      R => '0'
    );
\gpr1.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_48_53_n_4,
      Q => dout_i(53),
      R => '0'
    );
\gpr1.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_54_59_n_1,
      Q => dout_i(54),
      R => '0'
    );
\gpr1.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_54_59_n_0,
      Q => dout_i(55),
      R => '0'
    );
\gpr1.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_54_59_n_3,
      Q => dout_i(56),
      R => '0'
    );
\gpr1.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_54_59_n_2,
      Q => dout_i(57),
      R => '0'
    );
\gpr1.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_54_59_n_5,
      Q => dout_i(58),
      R => '0'
    );
\gpr1.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_54_59_n_4,
      Q => dout_i(59),
      R => '0'
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_0_5_n_4,
      Q => dout_i(5),
      R => '0'
    );
\gpr1.dout_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_60_61_n_1,
      Q => dout_i(60),
      R => '0'
    );
\gpr1.dout_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_60_61_n_0,
      Q => dout_i(61),
      R => '0'
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_6_11_n_1,
      Q => dout_i(6),
      R => '0'
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_6_11_n_0,
      Q => dout_i(7),
      R => '0'
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_6_11_n_3,
      Q => dout_i(8),
      R => '0'
    );
\gpr1.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[61]_0\(0),
      D => RAM_reg_0_15_6_11_n_2,
      Q => dout_i(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_dmem__parameterized0\ is
  port (
    dout_i : out STD_LOGIC_VECTOR ( 72 downto 0 );
    s_aclk : in STD_LOGIC;
    I59 : in STD_LOGIC;
    I468 : in STD_LOGIC_VECTOR ( 72 downto 0 );
    count_d1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[72]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_dmem__parameterized0\ : entity is "dmem";
end \base_auto_cc_1_dmem__parameterized0\;

architecture STRUCTURE of \base_auto_cc_1_dmem__parameterized0\ is
  signal RAM_reg_0_15_0_5_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_30_35_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_30_35_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_30_35_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_30_35_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_30_35_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_30_35_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_36_41_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_36_41_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_36_41_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_36_41_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_36_41_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_36_41_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_42_47_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_42_47_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_42_47_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_42_47_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_42_47_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_42_47_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_48_53_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_48_53_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_48_53_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_48_53_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_48_53_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_48_53_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_54_59_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_54_59_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_54_59_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_54_59_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_54_59_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_54_59_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_60_65_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_60_65_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_60_65_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_60_65_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_60_65_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_60_65_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_66_71_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_66_71_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_66_71_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_66_71_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_66_71_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_66_71_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_72_72_n_1 : STD_LOGIC;
  signal NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_60_65_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_66_71_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_72_72_DOA_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_RAM_reg_0_15_72_72_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_72_72_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_72_72_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_0_5 : label is "";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of RAM_reg_0_15_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of RAM_reg_0_15_0_5 : label is 15;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of RAM_reg_0_15_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of RAM_reg_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_12_17 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_12_17 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_12_17 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_12_17 : label is 12;
  attribute ram_slice_end of RAM_reg_0_15_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_18_23 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_18_23 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_18_23 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_18_23 : label is 18;
  attribute ram_slice_end of RAM_reg_0_15_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_24_29 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_24_29 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_24_29 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_24_29 : label is 24;
  attribute ram_slice_end of RAM_reg_0_15_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_30_35 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_30_35 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_30_35 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_30_35 : label is 30;
  attribute ram_slice_end of RAM_reg_0_15_30_35 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_36_41 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_36_41 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_36_41 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_36_41 : label is 36;
  attribute ram_slice_end of RAM_reg_0_15_36_41 : label is 41;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_42_47 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_42_47 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_42_47 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_42_47 : label is 42;
  attribute ram_slice_end of RAM_reg_0_15_42_47 : label is 47;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_48_53 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_48_53 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_48_53 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_48_53 : label is 48;
  attribute ram_slice_end of RAM_reg_0_15_48_53 : label is 53;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_54_59 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_54_59 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_54_59 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_54_59 : label is 54;
  attribute ram_slice_end of RAM_reg_0_15_54_59 : label is 59;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_60_65 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_60_65 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_60_65 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_60_65 : label is 60;
  attribute ram_slice_end of RAM_reg_0_15_60_65 : label is 65;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_66_71 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_66_71 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_66_71 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_66_71 : label is 66;
  attribute ram_slice_end of RAM_reg_0_15_66_71 : label is 71;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_6_11 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_6_11 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_6_11 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_6_11 : label is 6;
  attribute ram_slice_end of RAM_reg_0_15_6_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_72_72 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_72_72 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_72_72 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_72_72 : label is 72;
  attribute ram_slice_end of RAM_reg_0_15_72_72 : label is 72;
begin
RAM_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I468(1 downto 0),
      DIB(1 downto 0) => I468(3 downto 2),
      DIC(1 downto 0) => I468(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_0_5_n_0,
      DOA(0) => RAM_reg_0_15_0_5_n_1,
      DOB(1) => RAM_reg_0_15_0_5_n_2,
      DOB(0) => RAM_reg_0_15_0_5_n_3,
      DOC(1) => RAM_reg_0_15_0_5_n_4,
      DOC(0) => RAM_reg_0_15_0_5_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I59
    );
RAM_reg_0_15_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I468(13 downto 12),
      DIB(1 downto 0) => I468(15 downto 14),
      DIC(1 downto 0) => I468(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_12_17_n_0,
      DOA(0) => RAM_reg_0_15_12_17_n_1,
      DOB(1) => RAM_reg_0_15_12_17_n_2,
      DOB(0) => RAM_reg_0_15_12_17_n_3,
      DOC(1) => RAM_reg_0_15_12_17_n_4,
      DOC(0) => RAM_reg_0_15_12_17_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I59
    );
RAM_reg_0_15_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I468(19 downto 18),
      DIB(1 downto 0) => I468(21 downto 20),
      DIC(1 downto 0) => I468(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_18_23_n_0,
      DOA(0) => RAM_reg_0_15_18_23_n_1,
      DOB(1) => RAM_reg_0_15_18_23_n_2,
      DOB(0) => RAM_reg_0_15_18_23_n_3,
      DOC(1) => RAM_reg_0_15_18_23_n_4,
      DOC(0) => RAM_reg_0_15_18_23_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I59
    );
RAM_reg_0_15_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I468(25 downto 24),
      DIB(1 downto 0) => I468(27 downto 26),
      DIC(1 downto 0) => I468(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_24_29_n_0,
      DOA(0) => RAM_reg_0_15_24_29_n_1,
      DOB(1) => RAM_reg_0_15_24_29_n_2,
      DOB(0) => RAM_reg_0_15_24_29_n_3,
      DOC(1) => RAM_reg_0_15_24_29_n_4,
      DOC(0) => RAM_reg_0_15_24_29_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I59
    );
RAM_reg_0_15_30_35: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I468(31 downto 30),
      DIB(1 downto 0) => I468(33 downto 32),
      DIC(1 downto 0) => I468(35 downto 34),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_30_35_n_0,
      DOA(0) => RAM_reg_0_15_30_35_n_1,
      DOB(1) => RAM_reg_0_15_30_35_n_2,
      DOB(0) => RAM_reg_0_15_30_35_n_3,
      DOC(1) => RAM_reg_0_15_30_35_n_4,
      DOC(0) => RAM_reg_0_15_30_35_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I59
    );
RAM_reg_0_15_36_41: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I468(37 downto 36),
      DIB(1 downto 0) => I468(39 downto 38),
      DIC(1 downto 0) => I468(41 downto 40),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_36_41_n_0,
      DOA(0) => RAM_reg_0_15_36_41_n_1,
      DOB(1) => RAM_reg_0_15_36_41_n_2,
      DOB(0) => RAM_reg_0_15_36_41_n_3,
      DOC(1) => RAM_reg_0_15_36_41_n_4,
      DOC(0) => RAM_reg_0_15_36_41_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I59
    );
RAM_reg_0_15_42_47: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I468(43 downto 42),
      DIB(1 downto 0) => I468(45 downto 44),
      DIC(1 downto 0) => I468(47 downto 46),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_42_47_n_0,
      DOA(0) => RAM_reg_0_15_42_47_n_1,
      DOB(1) => RAM_reg_0_15_42_47_n_2,
      DOB(0) => RAM_reg_0_15_42_47_n_3,
      DOC(1) => RAM_reg_0_15_42_47_n_4,
      DOC(0) => RAM_reg_0_15_42_47_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I59
    );
RAM_reg_0_15_48_53: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I468(49 downto 48),
      DIB(1 downto 0) => I468(51 downto 50),
      DIC(1 downto 0) => I468(53 downto 52),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_48_53_n_0,
      DOA(0) => RAM_reg_0_15_48_53_n_1,
      DOB(1) => RAM_reg_0_15_48_53_n_2,
      DOB(0) => RAM_reg_0_15_48_53_n_3,
      DOC(1) => RAM_reg_0_15_48_53_n_4,
      DOC(0) => RAM_reg_0_15_48_53_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I59
    );
RAM_reg_0_15_54_59: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I468(55 downto 54),
      DIB(1 downto 0) => I468(57 downto 56),
      DIC(1 downto 0) => I468(59 downto 58),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_54_59_n_0,
      DOA(0) => RAM_reg_0_15_54_59_n_1,
      DOB(1) => RAM_reg_0_15_54_59_n_2,
      DOB(0) => RAM_reg_0_15_54_59_n_3,
      DOC(1) => RAM_reg_0_15_54_59_n_4,
      DOC(0) => RAM_reg_0_15_54_59_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I59
    );
RAM_reg_0_15_60_65: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I468(61 downto 60),
      DIB(1 downto 0) => I468(63 downto 62),
      DIC(1 downto 0) => I468(65 downto 64),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_60_65_n_0,
      DOA(0) => RAM_reg_0_15_60_65_n_1,
      DOB(1) => RAM_reg_0_15_60_65_n_2,
      DOB(0) => RAM_reg_0_15_60_65_n_3,
      DOC(1) => RAM_reg_0_15_60_65_n_4,
      DOC(0) => RAM_reg_0_15_60_65_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_60_65_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I59
    );
RAM_reg_0_15_66_71: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I468(67 downto 66),
      DIB(1 downto 0) => I468(69 downto 68),
      DIC(1 downto 0) => I468(71 downto 70),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_66_71_n_0,
      DOA(0) => RAM_reg_0_15_66_71_n_1,
      DOB(1) => RAM_reg_0_15_66_71_n_2,
      DOB(0) => RAM_reg_0_15_66_71_n_3,
      DOC(1) => RAM_reg_0_15_66_71_n_4,
      DOC(0) => RAM_reg_0_15_66_71_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_66_71_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I59
    );
RAM_reg_0_15_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I468(7 downto 6),
      DIB(1 downto 0) => I468(9 downto 8),
      DIC(1 downto 0) => I468(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_6_11_n_0,
      DOA(0) => RAM_reg_0_15_6_11_n_1,
      DOB(1) => RAM_reg_0_15_6_11_n_2,
      DOB(0) => RAM_reg_0_15_6_11_n_3,
      DOC(1) => RAM_reg_0_15_6_11_n_4,
      DOC(0) => RAM_reg_0_15_6_11_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I59
    );
RAM_reg_0_15_72_72: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1) => '0',
      DIA(0) => I468(72),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1) => NLW_RAM_reg_0_15_72_72_DOA_UNCONNECTED(1),
      DOA(0) => RAM_reg_0_15_72_72_n_1,
      DOB(1 downto 0) => NLW_RAM_reg_0_15_72_72_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_RAM_reg_0_15_72_72_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_72_72_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I59
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_0_5_n_1,
      Q => dout_i(0),
      R => '0'
    );
\gpr1.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_6_11_n_5,
      Q => dout_i(10),
      R => '0'
    );
\gpr1.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_6_11_n_4,
      Q => dout_i(11),
      R => '0'
    );
\gpr1.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_12_17_n_1,
      Q => dout_i(12),
      R => '0'
    );
\gpr1.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_12_17_n_0,
      Q => dout_i(13),
      R => '0'
    );
\gpr1.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_12_17_n_3,
      Q => dout_i(14),
      R => '0'
    );
\gpr1.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_12_17_n_2,
      Q => dout_i(15),
      R => '0'
    );
\gpr1.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_12_17_n_5,
      Q => dout_i(16),
      R => '0'
    );
\gpr1.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_12_17_n_4,
      Q => dout_i(17),
      R => '0'
    );
\gpr1.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_18_23_n_1,
      Q => dout_i(18),
      R => '0'
    );
\gpr1.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_18_23_n_0,
      Q => dout_i(19),
      R => '0'
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_0_5_n_0,
      Q => dout_i(1),
      R => '0'
    );
\gpr1.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_18_23_n_3,
      Q => dout_i(20),
      R => '0'
    );
\gpr1.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_18_23_n_2,
      Q => dout_i(21),
      R => '0'
    );
\gpr1.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_18_23_n_5,
      Q => dout_i(22),
      R => '0'
    );
\gpr1.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_18_23_n_4,
      Q => dout_i(23),
      R => '0'
    );
\gpr1.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_24_29_n_1,
      Q => dout_i(24),
      R => '0'
    );
\gpr1.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_24_29_n_0,
      Q => dout_i(25),
      R => '0'
    );
\gpr1.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_24_29_n_3,
      Q => dout_i(26),
      R => '0'
    );
\gpr1.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_24_29_n_2,
      Q => dout_i(27),
      R => '0'
    );
\gpr1.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_24_29_n_5,
      Q => dout_i(28),
      R => '0'
    );
\gpr1.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_24_29_n_4,
      Q => dout_i(29),
      R => '0'
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_0_5_n_3,
      Q => dout_i(2),
      R => '0'
    );
\gpr1.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_30_35_n_1,
      Q => dout_i(30),
      R => '0'
    );
\gpr1.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_30_35_n_0,
      Q => dout_i(31),
      R => '0'
    );
\gpr1.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_30_35_n_3,
      Q => dout_i(32),
      R => '0'
    );
\gpr1.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_30_35_n_2,
      Q => dout_i(33),
      R => '0'
    );
\gpr1.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_30_35_n_5,
      Q => dout_i(34),
      R => '0'
    );
\gpr1.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_30_35_n_4,
      Q => dout_i(35),
      R => '0'
    );
\gpr1.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_36_41_n_1,
      Q => dout_i(36),
      R => '0'
    );
\gpr1.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_36_41_n_0,
      Q => dout_i(37),
      R => '0'
    );
\gpr1.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_36_41_n_3,
      Q => dout_i(38),
      R => '0'
    );
\gpr1.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_36_41_n_2,
      Q => dout_i(39),
      R => '0'
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_0_5_n_2,
      Q => dout_i(3),
      R => '0'
    );
\gpr1.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_36_41_n_5,
      Q => dout_i(40),
      R => '0'
    );
\gpr1.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_36_41_n_4,
      Q => dout_i(41),
      R => '0'
    );
\gpr1.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_42_47_n_1,
      Q => dout_i(42),
      R => '0'
    );
\gpr1.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_42_47_n_0,
      Q => dout_i(43),
      R => '0'
    );
\gpr1.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_42_47_n_3,
      Q => dout_i(44),
      R => '0'
    );
\gpr1.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_42_47_n_2,
      Q => dout_i(45),
      R => '0'
    );
\gpr1.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_42_47_n_5,
      Q => dout_i(46),
      R => '0'
    );
\gpr1.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_42_47_n_4,
      Q => dout_i(47),
      R => '0'
    );
\gpr1.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_48_53_n_1,
      Q => dout_i(48),
      R => '0'
    );
\gpr1.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_48_53_n_0,
      Q => dout_i(49),
      R => '0'
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_0_5_n_5,
      Q => dout_i(4),
      R => '0'
    );
\gpr1.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_48_53_n_3,
      Q => dout_i(50),
      R => '0'
    );
\gpr1.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_48_53_n_2,
      Q => dout_i(51),
      R => '0'
    );
\gpr1.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_48_53_n_5,
      Q => dout_i(52),
      R => '0'
    );
\gpr1.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_48_53_n_4,
      Q => dout_i(53),
      R => '0'
    );
\gpr1.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_54_59_n_1,
      Q => dout_i(54),
      R => '0'
    );
\gpr1.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_54_59_n_0,
      Q => dout_i(55),
      R => '0'
    );
\gpr1.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_54_59_n_3,
      Q => dout_i(56),
      R => '0'
    );
\gpr1.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_54_59_n_2,
      Q => dout_i(57),
      R => '0'
    );
\gpr1.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_54_59_n_5,
      Q => dout_i(58),
      R => '0'
    );
\gpr1.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_54_59_n_4,
      Q => dout_i(59),
      R => '0'
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_0_5_n_4,
      Q => dout_i(5),
      R => '0'
    );
\gpr1.dout_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_60_65_n_1,
      Q => dout_i(60),
      R => '0'
    );
\gpr1.dout_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_60_65_n_0,
      Q => dout_i(61),
      R => '0'
    );
\gpr1.dout_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_60_65_n_3,
      Q => dout_i(62),
      R => '0'
    );
\gpr1.dout_i_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_60_65_n_2,
      Q => dout_i(63),
      R => '0'
    );
\gpr1.dout_i_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_60_65_n_5,
      Q => dout_i(64),
      R => '0'
    );
\gpr1.dout_i_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_60_65_n_4,
      Q => dout_i(65),
      R => '0'
    );
\gpr1.dout_i_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_66_71_n_1,
      Q => dout_i(66),
      R => '0'
    );
\gpr1.dout_i_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_66_71_n_0,
      Q => dout_i(67),
      R => '0'
    );
\gpr1.dout_i_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_66_71_n_3,
      Q => dout_i(68),
      R => '0'
    );
\gpr1.dout_i_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_66_71_n_2,
      Q => dout_i(69),
      R => '0'
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_6_11_n_1,
      Q => dout_i(6),
      R => '0'
    );
\gpr1.dout_i_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_66_71_n_5,
      Q => dout_i(70),
      R => '0'
    );
\gpr1.dout_i_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_66_71_n_4,
      Q => dout_i(71),
      R => '0'
    );
\gpr1.dout_i_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_72_72_n_1,
      Q => dout_i(72),
      R => '0'
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_6_11_n_0,
      Q => dout_i(7),
      R => '0'
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_6_11_n_3,
      Q => dout_i(8),
      R => '0'
    );
\gpr1.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpr1.dout_i_reg[72]_0\(0),
      D => RAM_reg_0_15_6_11_n_2,
      Q => dout_i(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_dmem__parameterized1\ is
  port (
    dout_i : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_aclk : in STD_LOGIC;
    p_20_out : in STD_LOGIC;
    I471 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I80 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I81 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_dmem__parameterized1\ : entity is "dmem";
end \base_auto_cc_1_dmem__parameterized1\;

architecture STRUCTURE of \base_auto_cc_1_dmem__parameterized1\ is
  signal RAM_reg_0_15_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_0_2_n_3 : STD_LOGIC;
  signal NLW_RAM_reg_0_15_0_2_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_RAM_reg_0_15_0_2_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_0_2_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_0_2 : label is "";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of RAM_reg_0_15_0_2 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of RAM_reg_0_15_0_2 : label is 15;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of RAM_reg_0_15_0_2 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of RAM_reg_0_15_0_2 : label is 2;
begin
RAM_reg_0_15_0_2: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => I80(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => I80(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => I80(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => I81(3 downto 0),
      DIA(1 downto 0) => I471(1 downto 0),
      DIB(1) => '0',
      DIB(0) => I471(2),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_0_2_n_0,
      DOA(0) => RAM_reg_0_15_0_2_n_1,
      DOB(1) => NLW_RAM_reg_0_15_0_2_DOB_UNCONNECTED(1),
      DOB(0) => RAM_reg_0_15_0_2_n_3,
      DOC(1 downto 0) => NLW_RAM_reg_0_15_0_2_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_0_2_DOD_UNCONNECTED(1 downto 0),
      WCLK => m_aclk,
      WE => p_20_out
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => RAM_reg_0_15_0_2_n_1,
      Q => dout_i(0),
      R => '0'
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => RAM_reg_0_15_0_2_n_0,
      Q => dout_i(1),
      R => '0'
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => RAM_reg_0_15_0_2_n_3,
      Q => dout_i(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_dmem__parameterized2\ is
  port (
    dout_i : out STD_LOGIC_VECTOR ( 67 downto 0 );
    m_aclk : in STD_LOGIC;
    I71 : in STD_LOGIC;
    I477 : in STD_LOGIC_VECTOR ( 67 downto 0 );
    count_d1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[67]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_dmem__parameterized2\ : entity is "dmem";
end \base_auto_cc_1_dmem__parameterized2\;

architecture STRUCTURE of \base_auto_cc_1_dmem__parameterized2\ is
  signal RAM_reg_0_15_0_5_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_30_35_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_30_35_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_30_35_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_30_35_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_30_35_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_30_35_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_36_41_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_36_41_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_36_41_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_36_41_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_36_41_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_36_41_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_42_47_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_42_47_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_42_47_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_42_47_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_42_47_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_42_47_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_48_53_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_48_53_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_48_53_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_48_53_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_48_53_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_48_53_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_54_59_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_54_59_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_54_59_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_54_59_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_54_59_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_54_59_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_60_65_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_60_65_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_60_65_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_60_65_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_60_65_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_60_65_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_66_67_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_66_67_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_5 : STD_LOGIC;
  signal NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_60_65_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_66_67_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_66_67_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_66_67_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_0_5 : label is "";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of RAM_reg_0_15_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of RAM_reg_0_15_0_5 : label is 15;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of RAM_reg_0_15_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of RAM_reg_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_12_17 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_12_17 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_12_17 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_12_17 : label is 12;
  attribute ram_slice_end of RAM_reg_0_15_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_18_23 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_18_23 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_18_23 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_18_23 : label is 18;
  attribute ram_slice_end of RAM_reg_0_15_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_24_29 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_24_29 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_24_29 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_24_29 : label is 24;
  attribute ram_slice_end of RAM_reg_0_15_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_30_35 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_30_35 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_30_35 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_30_35 : label is 30;
  attribute ram_slice_end of RAM_reg_0_15_30_35 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_36_41 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_36_41 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_36_41 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_36_41 : label is 36;
  attribute ram_slice_end of RAM_reg_0_15_36_41 : label is 41;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_42_47 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_42_47 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_42_47 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_42_47 : label is 42;
  attribute ram_slice_end of RAM_reg_0_15_42_47 : label is 47;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_48_53 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_48_53 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_48_53 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_48_53 : label is 48;
  attribute ram_slice_end of RAM_reg_0_15_48_53 : label is 53;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_54_59 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_54_59 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_54_59 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_54_59 : label is 54;
  attribute ram_slice_end of RAM_reg_0_15_54_59 : label is 59;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_60_65 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_60_65 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_60_65 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_60_65 : label is 60;
  attribute ram_slice_end of RAM_reg_0_15_60_65 : label is 65;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_66_67 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_66_67 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_66_67 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_66_67 : label is 66;
  attribute ram_slice_end of RAM_reg_0_15_66_67 : label is 67;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_6_11 : label is "";
  attribute ram_addr_begin of RAM_reg_0_15_6_11 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_6_11 : label is 15;
  attribute ram_slice_begin of RAM_reg_0_15_6_11 : label is 6;
  attribute ram_slice_end of RAM_reg_0_15_6_11 : label is 11;
begin
RAM_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I477(1 downto 0),
      DIB(1 downto 0) => I477(3 downto 2),
      DIC(1 downto 0) => I477(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_0_5_n_0,
      DOA(0) => RAM_reg_0_15_0_5_n_1,
      DOB(1) => RAM_reg_0_15_0_5_n_2,
      DOB(0) => RAM_reg_0_15_0_5_n_3,
      DOC(1) => RAM_reg_0_15_0_5_n_4,
      DOC(0) => RAM_reg_0_15_0_5_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => m_aclk,
      WE => I71
    );
RAM_reg_0_15_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I477(13 downto 12),
      DIB(1 downto 0) => I477(15 downto 14),
      DIC(1 downto 0) => I477(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_12_17_n_0,
      DOA(0) => RAM_reg_0_15_12_17_n_1,
      DOB(1) => RAM_reg_0_15_12_17_n_2,
      DOB(0) => RAM_reg_0_15_12_17_n_3,
      DOC(1) => RAM_reg_0_15_12_17_n_4,
      DOC(0) => RAM_reg_0_15_12_17_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => m_aclk,
      WE => I71
    );
RAM_reg_0_15_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I477(19 downto 18),
      DIB(1 downto 0) => I477(21 downto 20),
      DIC(1 downto 0) => I477(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_18_23_n_0,
      DOA(0) => RAM_reg_0_15_18_23_n_1,
      DOB(1) => RAM_reg_0_15_18_23_n_2,
      DOB(0) => RAM_reg_0_15_18_23_n_3,
      DOC(1) => RAM_reg_0_15_18_23_n_4,
      DOC(0) => RAM_reg_0_15_18_23_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => m_aclk,
      WE => I71
    );
RAM_reg_0_15_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I477(25 downto 24),
      DIB(1 downto 0) => I477(27 downto 26),
      DIC(1 downto 0) => I477(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_24_29_n_0,
      DOA(0) => RAM_reg_0_15_24_29_n_1,
      DOB(1) => RAM_reg_0_15_24_29_n_2,
      DOB(0) => RAM_reg_0_15_24_29_n_3,
      DOC(1) => RAM_reg_0_15_24_29_n_4,
      DOC(0) => RAM_reg_0_15_24_29_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => m_aclk,
      WE => I71
    );
RAM_reg_0_15_30_35: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I477(31 downto 30),
      DIB(1 downto 0) => I477(33 downto 32),
      DIC(1 downto 0) => I477(35 downto 34),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_30_35_n_0,
      DOA(0) => RAM_reg_0_15_30_35_n_1,
      DOB(1) => RAM_reg_0_15_30_35_n_2,
      DOB(0) => RAM_reg_0_15_30_35_n_3,
      DOC(1) => RAM_reg_0_15_30_35_n_4,
      DOC(0) => RAM_reg_0_15_30_35_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED(1 downto 0),
      WCLK => m_aclk,
      WE => I71
    );
RAM_reg_0_15_36_41: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I477(37 downto 36),
      DIB(1 downto 0) => I477(39 downto 38),
      DIC(1 downto 0) => I477(41 downto 40),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_36_41_n_0,
      DOA(0) => RAM_reg_0_15_36_41_n_1,
      DOB(1) => RAM_reg_0_15_36_41_n_2,
      DOB(0) => RAM_reg_0_15_36_41_n_3,
      DOC(1) => RAM_reg_0_15_36_41_n_4,
      DOC(0) => RAM_reg_0_15_36_41_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED(1 downto 0),
      WCLK => m_aclk,
      WE => I71
    );
RAM_reg_0_15_42_47: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I477(43 downto 42),
      DIB(1 downto 0) => I477(45 downto 44),
      DIC(1 downto 0) => I477(47 downto 46),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_42_47_n_0,
      DOA(0) => RAM_reg_0_15_42_47_n_1,
      DOB(1) => RAM_reg_0_15_42_47_n_2,
      DOB(0) => RAM_reg_0_15_42_47_n_3,
      DOC(1) => RAM_reg_0_15_42_47_n_4,
      DOC(0) => RAM_reg_0_15_42_47_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED(1 downto 0),
      WCLK => m_aclk,
      WE => I71
    );
RAM_reg_0_15_48_53: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I477(49 downto 48),
      DIB(1 downto 0) => I477(51 downto 50),
      DIC(1 downto 0) => I477(53 downto 52),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_48_53_n_0,
      DOA(0) => RAM_reg_0_15_48_53_n_1,
      DOB(1) => RAM_reg_0_15_48_53_n_2,
      DOB(0) => RAM_reg_0_15_48_53_n_3,
      DOC(1) => RAM_reg_0_15_48_53_n_4,
      DOC(0) => RAM_reg_0_15_48_53_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED(1 downto 0),
      WCLK => m_aclk,
      WE => I71
    );
RAM_reg_0_15_54_59: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I477(55 downto 54),
      DIB(1 downto 0) => I477(57 downto 56),
      DIC(1 downto 0) => I477(59 downto 58),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_54_59_n_0,
      DOA(0) => RAM_reg_0_15_54_59_n_1,
      DOB(1) => RAM_reg_0_15_54_59_n_2,
      DOB(0) => RAM_reg_0_15_54_59_n_3,
      DOC(1) => RAM_reg_0_15_54_59_n_4,
      DOC(0) => RAM_reg_0_15_54_59_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED(1 downto 0),
      WCLK => m_aclk,
      WE => I71
    );
RAM_reg_0_15_60_65: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I477(61 downto 60),
      DIB(1 downto 0) => I477(63 downto 62),
      DIC(1 downto 0) => I477(65 downto 64),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_60_65_n_0,
      DOA(0) => RAM_reg_0_15_60_65_n_1,
      DOB(1) => RAM_reg_0_15_60_65_n_2,
      DOB(0) => RAM_reg_0_15_60_65_n_3,
      DOC(1) => RAM_reg_0_15_60_65_n_4,
      DOC(0) => RAM_reg_0_15_60_65_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_60_65_DOD_UNCONNECTED(1 downto 0),
      WCLK => m_aclk,
      WE => I71
    );
RAM_reg_0_15_66_67: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I477(67 downto 66),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_66_67_n_0,
      DOA(0) => RAM_reg_0_15_66_67_n_1,
      DOB(1 downto 0) => NLW_RAM_reg_0_15_66_67_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_RAM_reg_0_15_66_67_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_66_67_DOD_UNCONNECTED(1 downto 0),
      WCLK => m_aclk,
      WE => I71
    );
RAM_reg_0_15_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => count_d1(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => count_d1(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => count_d1(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gpr1.dout_i_reg[1]_0\(3 downto 0),
      DIA(1 downto 0) => I477(7 downto 6),
      DIB(1 downto 0) => I477(9 downto 8),
      DIC(1 downto 0) => I477(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_6_11_n_0,
      DOA(0) => RAM_reg_0_15_6_11_n_1,
      DOB(1) => RAM_reg_0_15_6_11_n_2,
      DOB(0) => RAM_reg_0_15_6_11_n_3,
      DOC(1) => RAM_reg_0_15_6_11_n_4,
      DOC(0) => RAM_reg_0_15_6_11_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => m_aclk,
      WE => I71
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_0_5_n_1,
      Q => dout_i(0),
      R => '0'
    );
\gpr1.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_6_11_n_5,
      Q => dout_i(10),
      R => '0'
    );
\gpr1.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_6_11_n_4,
      Q => dout_i(11),
      R => '0'
    );
\gpr1.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_12_17_n_1,
      Q => dout_i(12),
      R => '0'
    );
\gpr1.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_12_17_n_0,
      Q => dout_i(13),
      R => '0'
    );
\gpr1.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_12_17_n_3,
      Q => dout_i(14),
      R => '0'
    );
\gpr1.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_12_17_n_2,
      Q => dout_i(15),
      R => '0'
    );
\gpr1.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_12_17_n_5,
      Q => dout_i(16),
      R => '0'
    );
\gpr1.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_12_17_n_4,
      Q => dout_i(17),
      R => '0'
    );
\gpr1.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_18_23_n_1,
      Q => dout_i(18),
      R => '0'
    );
\gpr1.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_18_23_n_0,
      Q => dout_i(19),
      R => '0'
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_0_5_n_0,
      Q => dout_i(1),
      R => '0'
    );
\gpr1.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_18_23_n_3,
      Q => dout_i(20),
      R => '0'
    );
\gpr1.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_18_23_n_2,
      Q => dout_i(21),
      R => '0'
    );
\gpr1.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_18_23_n_5,
      Q => dout_i(22),
      R => '0'
    );
\gpr1.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_18_23_n_4,
      Q => dout_i(23),
      R => '0'
    );
\gpr1.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_24_29_n_1,
      Q => dout_i(24),
      R => '0'
    );
\gpr1.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_24_29_n_0,
      Q => dout_i(25),
      R => '0'
    );
\gpr1.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_24_29_n_3,
      Q => dout_i(26),
      R => '0'
    );
\gpr1.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_24_29_n_2,
      Q => dout_i(27),
      R => '0'
    );
\gpr1.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_24_29_n_5,
      Q => dout_i(28),
      R => '0'
    );
\gpr1.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_24_29_n_4,
      Q => dout_i(29),
      R => '0'
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_0_5_n_3,
      Q => dout_i(2),
      R => '0'
    );
\gpr1.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_30_35_n_1,
      Q => dout_i(30),
      R => '0'
    );
\gpr1.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_30_35_n_0,
      Q => dout_i(31),
      R => '0'
    );
\gpr1.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_30_35_n_3,
      Q => dout_i(32),
      R => '0'
    );
\gpr1.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_30_35_n_2,
      Q => dout_i(33),
      R => '0'
    );
\gpr1.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_30_35_n_5,
      Q => dout_i(34),
      R => '0'
    );
\gpr1.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_30_35_n_4,
      Q => dout_i(35),
      R => '0'
    );
\gpr1.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_36_41_n_1,
      Q => dout_i(36),
      R => '0'
    );
\gpr1.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_36_41_n_0,
      Q => dout_i(37),
      R => '0'
    );
\gpr1.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_36_41_n_3,
      Q => dout_i(38),
      R => '0'
    );
\gpr1.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_36_41_n_2,
      Q => dout_i(39),
      R => '0'
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_0_5_n_2,
      Q => dout_i(3),
      R => '0'
    );
\gpr1.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_36_41_n_5,
      Q => dout_i(40),
      R => '0'
    );
\gpr1.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_36_41_n_4,
      Q => dout_i(41),
      R => '0'
    );
\gpr1.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_42_47_n_1,
      Q => dout_i(42),
      R => '0'
    );
\gpr1.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_42_47_n_0,
      Q => dout_i(43),
      R => '0'
    );
\gpr1.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_42_47_n_3,
      Q => dout_i(44),
      R => '0'
    );
\gpr1.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_42_47_n_2,
      Q => dout_i(45),
      R => '0'
    );
\gpr1.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_42_47_n_5,
      Q => dout_i(46),
      R => '0'
    );
\gpr1.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_42_47_n_4,
      Q => dout_i(47),
      R => '0'
    );
\gpr1.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_48_53_n_1,
      Q => dout_i(48),
      R => '0'
    );
\gpr1.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_48_53_n_0,
      Q => dout_i(49),
      R => '0'
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_0_5_n_5,
      Q => dout_i(4),
      R => '0'
    );
\gpr1.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_48_53_n_3,
      Q => dout_i(50),
      R => '0'
    );
\gpr1.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_48_53_n_2,
      Q => dout_i(51),
      R => '0'
    );
\gpr1.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_48_53_n_5,
      Q => dout_i(52),
      R => '0'
    );
\gpr1.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_48_53_n_4,
      Q => dout_i(53),
      R => '0'
    );
\gpr1.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_54_59_n_1,
      Q => dout_i(54),
      R => '0'
    );
\gpr1.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_54_59_n_0,
      Q => dout_i(55),
      R => '0'
    );
\gpr1.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_54_59_n_3,
      Q => dout_i(56),
      R => '0'
    );
\gpr1.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_54_59_n_2,
      Q => dout_i(57),
      R => '0'
    );
\gpr1.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_54_59_n_5,
      Q => dout_i(58),
      R => '0'
    );
\gpr1.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_54_59_n_4,
      Q => dout_i(59),
      R => '0'
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_0_5_n_4,
      Q => dout_i(5),
      R => '0'
    );
\gpr1.dout_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_60_65_n_1,
      Q => dout_i(60),
      R => '0'
    );
\gpr1.dout_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_60_65_n_0,
      Q => dout_i(61),
      R => '0'
    );
\gpr1.dout_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_60_65_n_3,
      Q => dout_i(62),
      R => '0'
    );
\gpr1.dout_i_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_60_65_n_2,
      Q => dout_i(63),
      R => '0'
    );
\gpr1.dout_i_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_60_65_n_5,
      Q => dout_i(64),
      R => '0'
    );
\gpr1.dout_i_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_60_65_n_4,
      Q => dout_i(65),
      R => '0'
    );
\gpr1.dout_i_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_66_67_n_1,
      Q => dout_i(66),
      R => '0'
    );
\gpr1.dout_i_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_66_67_n_0,
      Q => dout_i(67),
      R => '0'
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_6_11_n_1,
      Q => dout_i(6),
      R => '0'
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_6_11_n_0,
      Q => dout_i(7),
      R => '0'
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_6_11_n_3,
      Q => dout_i(8),
      R => '0'
    );
\gpr1.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[67]_0\(0),
      D => RAM_reg_0_15_6_11_n_2,
      Q => dout_i(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_bin_cntr is
  port (
    \gc0.count_d1_reg[2]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_d1_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i_reg : in STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    \gc0.count_d1_reg[3]_1\ : in STD_LOGIC
  );
end base_auto_cc_1_rd_bin_cntr;

architecture STRUCTURE of base_auto_cc_1_rd_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gc0.count_d1_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram_empty_i_i_2_n_0 : STD_LOGIC;
  signal ram_empty_i_i_3_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair18";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \gc0.count_d1_reg[3]_0\(3 downto 0) <= \^gc0.count_d1_reg[3]_0\(3 downto 0);
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__1\(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__1\(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \plusOp__1\(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \plusOp__1\(3)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(0),
      Q => \^gc0.count_d1_reg[3]_0\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(1),
      Q => \^gc0.count_d1_reg[3]_0\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(2),
      Q => \^gc0.count_d1_reg[3]_0\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(3),
      Q => \^gc0.count_d1_reg[3]_0\(3)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__1\(0),
      PRE => \gc0.count_d1_reg[3]_1\,
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \plusOp__1\(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \plusOp__1\(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \plusOp__1\(3),
      Q => \^q\(3)
    );
ram_empty_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_empty_i_i_2_n_0,
      I1 => ram_empty_i_i_3_n_0,
      I2 => ram_empty_i_reg,
      I3 => ram_empty_i_reg_0,
      O => \gc0.count_d1_reg[2]_0\
    );
ram_empty_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc0.count_d1_reg[3]_0\(2),
      I1 => WR_PNTR_RD(2),
      I2 => \^gc0.count_d1_reg[3]_0\(3),
      I3 => WR_PNTR_RD(3),
      O => ram_empty_i_i_2_n_0
    );
ram_empty_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc0.count_d1_reg[3]_0\(0),
      I1 => WR_PNTR_RD(0),
      I2 => \^gc0.count_d1_reg[3]_0\(1),
      I3 => WR_PNTR_RD(1),
      O => ram_empty_i_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_bin_cntr_13 is
  port (
    \gc0.count_d1_reg[2]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_d1_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i_reg : in STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC;
    \gc0.count_d1_reg[3]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_rd_bin_cntr_13 : entity is "rd_bin_cntr";
end base_auto_cc_1_rd_bin_cntr_13;

architecture STRUCTURE of base_auto_cc_1_rd_bin_cntr_13 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gc0.count_d1_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_empty_i_i_2__1_n_0\ : STD_LOGIC;
  signal \ram_empty_i_i_3__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1__1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1__1\ : label is "soft_lutpair10";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \gc0.count_d1_reg[3]_0\(3 downto 0) <= \^gc0.count_d1_reg[3]_0\(3 downto 0);
\gc0.count[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__4\(0)
    );
\gc0.count[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__4\(1)
    );
\gc0.count[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \plusOp__4\(2)
    );
\gc0.count[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \plusOp__4\(3)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(0),
      Q => \^gc0.count_d1_reg[3]_0\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(1),
      Q => \^gc0.count_d1_reg[3]_0\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(2),
      Q => \^gc0.count_d1_reg[3]_0\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(3),
      Q => \^gc0.count_d1_reg[3]_0\(3)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__4\(0),
      PRE => \gc0.count_d1_reg[3]_1\,
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \plusOp__4\(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \plusOp__4\(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \plusOp__4\(3),
      Q => \^q\(3)
    );
\ram_empty_i_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_empty_i_i_2__1_n_0\,
      I1 => \ram_empty_i_i_3__1_n_0\,
      I2 => ram_empty_i_reg,
      I3 => ram_empty_i_reg_0,
      O => \gc0.count_d1_reg[2]_0\
    );
\ram_empty_i_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc0.count_d1_reg[3]_0\(2),
      I1 => WR_PNTR_RD(2),
      I2 => \^gc0.count_d1_reg[3]_0\(3),
      I3 => WR_PNTR_RD(3),
      O => \ram_empty_i_i_2__1_n_0\
    );
\ram_empty_i_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc0.count_d1_reg[3]_0\(0),
      I1 => WR_PNTR_RD(0),
      I2 => \^gc0.count_d1_reg[3]_0\(1),
      I3 => WR_PNTR_RD(1),
      O => \ram_empty_i_i_3__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_bin_cntr_20 is
  port (
    \gc0.count_d1_reg[2]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_d1_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i_reg : in STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    \gc0.count_d1_reg[3]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_rd_bin_cntr_20 : entity is "rd_bin_cntr";
end base_auto_cc_1_rd_bin_cntr_20;

architecture STRUCTURE of base_auto_cc_1_rd_bin_cntr_20 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gc0.count_d1_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_empty_i_i_2__0_n_0\ : STD_LOGIC;
  signal \ram_empty_i_i_3__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1__0\ : label is "soft_lutpair6";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \gc0.count_d1_reg[3]_0\(3 downto 0) <= \^gc0.count_d1_reg[3]_0\(3 downto 0);
\gc0.count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__3\(0)
    );
\gc0.count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__3\(1)
    );
\gc0.count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \plusOp__3\(2)
    );
\gc0.count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \plusOp__3\(3)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(0),
      Q => \^gc0.count_d1_reg[3]_0\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(1),
      Q => \^gc0.count_d1_reg[3]_0\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(2),
      Q => \^gc0.count_d1_reg[3]_0\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(3),
      Q => \^gc0.count_d1_reg[3]_0\(3)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(0),
      PRE => \gc0.count_d1_reg[3]_1\,
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \plusOp__3\(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \plusOp__3\(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \plusOp__3\(3),
      Q => \^q\(3)
    );
\ram_empty_i_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_empty_i_i_2__0_n_0\,
      I1 => \ram_empty_i_i_3__0_n_0\,
      I2 => ram_empty_i_reg,
      I3 => ram_empty_i_reg_0,
      O => \gc0.count_d1_reg[2]_0\
    );
\ram_empty_i_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc0.count_d1_reg[3]_0\(2),
      I1 => WR_PNTR_RD(2),
      I2 => \^gc0.count_d1_reg[3]_0\(3),
      I3 => WR_PNTR_RD(3),
      O => \ram_empty_i_i_2__0_n_0\
    );
\ram_empty_i_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc0.count_d1_reg[3]_0\(0),
      I1 => WR_PNTR_RD(0),
      I2 => \^gc0.count_d1_reg[3]_0\(1),
      I3 => WR_PNTR_RD(1),
      O => \ram_empty_i_i_3__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_bin_cntr_29 is
  port (
    \gc0.count_d1_reg[2]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_d1_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i_reg : in STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC;
    \gc0.count_d1_reg[3]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_rd_bin_cntr_29 : entity is "rd_bin_cntr";
end base_auto_cc_1_rd_bin_cntr_29;

architecture STRUCTURE of base_auto_cc_1_rd_bin_cntr_29 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gc0.count_d1_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__7\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_empty_i_i_2__3_n_0\ : STD_LOGIC;
  signal \ram_empty_i_i_3__3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1__3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1__3\ : label is "soft_lutpair2";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \gc0.count_d1_reg[3]_0\(3 downto 0) <= \^gc0.count_d1_reg[3]_0\(3 downto 0);
\gc0.count[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__7\(0)
    );
\gc0.count[1]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__7\(1)
    );
\gc0.count[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \plusOp__7\(2)
    );
\gc0.count[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \plusOp__7\(3)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(0),
      Q => \^gc0.count_d1_reg[3]_0\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(1),
      Q => \^gc0.count_d1_reg[3]_0\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(2),
      Q => \^gc0.count_d1_reg[3]_0\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(3),
      Q => \^gc0.count_d1_reg[3]_0\(3)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__7\(0),
      PRE => \gc0.count_d1_reg[3]_1\,
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \plusOp__7\(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \plusOp__7\(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \plusOp__7\(3),
      Q => \^q\(3)
    );
\ram_empty_i_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_empty_i_i_2__3_n_0\,
      I1 => \ram_empty_i_i_3__3_n_0\,
      I2 => ram_empty_i_reg,
      I3 => ram_empty_i_reg_0,
      O => \gc0.count_d1_reg[2]_0\
    );
\ram_empty_i_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc0.count_d1_reg[3]_0\(2),
      I1 => WR_PNTR_RD(2),
      I2 => \^gc0.count_d1_reg[3]_0\(3),
      I3 => WR_PNTR_RD(3),
      O => \ram_empty_i_i_2__3_n_0\
    );
\ram_empty_i_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc0.count_d1_reg[3]_0\(0),
      I1 => WR_PNTR_RD(0),
      I2 => \^gc0.count_d1_reg[3]_0\(1),
      I3 => WR_PNTR_RD(1),
      O => \ram_empty_i_i_3__3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_bin_cntr_6 is
  port (
    \gc0.count_d1_reg[2]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_d1_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i_reg : in STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC;
    \gc0.count_d1_reg[3]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_rd_bin_cntr_6 : entity is "rd_bin_cntr";
end base_auto_cc_1_rd_bin_cntr_6;

architecture STRUCTURE of base_auto_cc_1_rd_bin_cntr_6 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gc0.count_d1_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__5\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_empty_i_i_2__2_n_0\ : STD_LOGIC;
  signal \ram_empty_i_i_3__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1__2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1__2\ : label is "soft_lutpair14";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \gc0.count_d1_reg[3]_0\(3 downto 0) <= \^gc0.count_d1_reg[3]_0\(3 downto 0);
\gc0.count[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__5\(0)
    );
\gc0.count[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__5\(1)
    );
\gc0.count[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \plusOp__5\(2)
    );
\gc0.count[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \plusOp__5\(3)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(0),
      Q => \^gc0.count_d1_reg[3]_0\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(1),
      Q => \^gc0.count_d1_reg[3]_0\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(2),
      Q => \^gc0.count_d1_reg[3]_0\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \^q\(3),
      Q => \^gc0.count_d1_reg[3]_0\(3)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__5\(0),
      PRE => \gc0.count_d1_reg[3]_1\,
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \plusOp__5\(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \plusOp__5\(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[3]_1\,
      D => \plusOp__5\(3),
      Q => \^q\(3)
    );
\ram_empty_i_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_empty_i_i_2__2_n_0\,
      I1 => \ram_empty_i_i_3__2_n_0\,
      I2 => ram_empty_i_reg,
      I3 => ram_empty_i_reg_0,
      O => \gc0.count_d1_reg[2]_0\
    );
\ram_empty_i_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc0.count_d1_reg[3]_0\(2),
      I1 => WR_PNTR_RD(2),
      I2 => \^gc0.count_d1_reg[3]_0\(3),
      I3 => WR_PNTR_RD(3),
      O => \ram_empty_i_i_2__2_n_0\
    );
\ram_empty_i_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc0.count_d1_reg[3]_0\(0),
      I1 => WR_PNTR_RD(0),
      I2 => \^gc0.count_d1_reg[3]_0\(1),
      I3 => WR_PNTR_RD(1),
      O => \ram_empty_i_i_3__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_fwft is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \gpregsm1.user_valid_reg_0\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[1]_1\ : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end base_auto_cc_1_rd_fwft;

architecture STRUCTURE of base_auto_cc_1_rd_fwft is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
  \out\(1 downto 0) <= curr_fwft_state(1 downto 0);
aempty_fwft_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF80EB00"
    )
        port map (
      I0 => \gpregsm1.curr_fwft_state_reg[1]_1\,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => aempty_fwft_fb_i,
      I4 => s_axi_bready,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => aempty_fwft_i
    );
empty_fwft_fb_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA22"
    )
        port map (
      I0 => empty_fwft_fb_i,
      I1 => curr_fwft_state(1),
      I2 => s_axi_bready,
      I3 => curr_fwft_state(0),
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => empty_fwft_fb_i
    );
empty_fwft_fb_o_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA22"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(1),
      I2 => s_axi_bready,
      I3 => curr_fwft_state(0),
      O => empty_fwft_fb_o_i0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => empty_fwft_fb_o_i
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => empty_fwft_i
    );
\gc0.count_d1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => s_axi_bready,
      I2 => curr_fwft_state(0),
      I3 => \gpregsm1.curr_fwft_state_reg[1]_1\,
      O => E(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => s_axi_bready,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => s_axi_bready,
      I2 => curr_fwft_state(0),
      I3 => \gpregsm1.curr_fwft_state_reg[1]_1\,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => \gpregsm1.user_valid_reg_0\,
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => \gpregsm1.user_valid_reg_0\,
      D => next_fwft_state(1),
      Q => curr_fwft_state(1)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => \gpregsm1.user_valid_reg_0\,
      D => next_fwft_state(0),
      Q => user_valid
    );
ram_empty_i_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DF0000000000DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => s_axi_bready,
      I2 => curr_fwft_state(0),
      I3 => \gpregsm1.curr_fwft_state_reg[1]_1\,
      I4 => WR_PNTR_RD(0),
      I5 => Q(0),
      O => \gpregsm1.curr_fwft_state_reg[1]_0\
    );
s_axi_bvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_fwft_i,
      O => s_axi_bvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_fwft_11 is
  port (
    \gpregsm1.curr_fwft_state_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \gpregsm1.user_valid_reg_0\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_rd_fwft_11 : entity is "rd_fwft";
end base_auto_cc_1_rd_fwft_11;

architecture STRUCTURE of base_auto_cc_1_rd_fwft_11 is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
\aempty_fwft_fb_i_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF80EB00"
    )
        port map (
      I0 => \out\,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => aempty_fwft_fb_i,
      I4 => m_axi_awready,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => aempty_fwft_i
    );
\empty_fwft_fb_i_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA22"
    )
        port map (
      I0 => empty_fwft_fb_i,
      I1 => curr_fwft_state(1),
      I2 => m_axi_awready,
      I3 => curr_fwft_state(0),
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => empty_fwft_fb_i
    );
\empty_fwft_fb_o_i_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA22"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(1),
      I2 => m_axi_awready,
      I3 => curr_fwft_state(0),
      O => empty_fwft_fb_o_i0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => empty_fwft_fb_o_i
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => empty_fwft_i
    );
\gc0.count_d1[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axi_awready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => E(0)
    );
\goreg_dm.dout_i[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
        port map (
      I0 => \gpregsm1.user_valid_reg_0\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => m_axi_awready,
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => m_axi_awready,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axi_awready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => \gpregsm1.user_valid_reg_0\,
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => \gpregsm1.user_valid_reg_0\,
      D => next_fwft_state(1),
      Q => curr_fwft_state(1)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => \gpregsm1.user_valid_reg_0\,
      D => next_fwft_state(0),
      Q => user_valid
    );
m_axi_awvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_fwft_i,
      O => m_axi_awvalid
    );
\ram_empty_i_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DF0000000000DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axi_awready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      I4 => WR_PNTR_RD(0),
      I5 => Q(0),
      O => \gpregsm1.curr_fwft_state_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_fwft_18 is
  port (
    \gpregsm1.curr_fwft_state_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \gpregsm1.user_valid_reg_0\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_rd_fwft_18 : entity is "rd_fwft";
end base_auto_cc_1_rd_fwft_18;

architecture STRUCTURE of base_auto_cc_1_rd_fwft_18 is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
\aempty_fwft_fb_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF80EB00"
    )
        port map (
      I0 => \out\,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => aempty_fwft_fb_i,
      I4 => s_axi_rready,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => aempty_fwft_i
    );
\empty_fwft_fb_i_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA22"
    )
        port map (
      I0 => empty_fwft_fb_i,
      I1 => curr_fwft_state(1),
      I2 => s_axi_rready,
      I3 => curr_fwft_state(0),
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => empty_fwft_fb_i
    );
\empty_fwft_fb_o_i_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA22"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(1),
      I2 => s_axi_rready,
      I3 => curr_fwft_state(0),
      O => empty_fwft_fb_o_i0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => empty_fwft_fb_o_i
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => empty_fwft_i
    );
\gc0.count_d1[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => s_axi_rready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => E(0)
    );
\goreg_dm.dout_i[67]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
        port map (
      I0 => \gpregsm1.user_valid_reg_0\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => s_axi_rready,
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => s_axi_rready,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => s_axi_rready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => \gpregsm1.user_valid_reg_0\,
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => \gpregsm1.user_valid_reg_0\,
      D => next_fwft_state(1),
      Q => curr_fwft_state(1)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => \gpregsm1.user_valid_reg_0\,
      D => next_fwft_state(0),
      Q => user_valid
    );
\ram_empty_i_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DF0000000000DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => s_axi_rready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      I4 => WR_PNTR_RD(0),
      I5 => Q(0),
      O => \gpregsm1.curr_fwft_state_reg[1]_0\
    );
s_axi_rvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_fwft_i,
      O => s_axi_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_fwft_27 is
  port (
    \gpregsm1.curr_fwft_state_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \gpregsm1.user_valid_reg_0\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_rd_fwft_27 : entity is "rd_fwft";
end base_auto_cc_1_rd_fwft_27;

architecture STRUCTURE of base_auto_cc_1_rd_fwft_27 is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
\aempty_fwft_fb_i_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF80EB00"
    )
        port map (
      I0 => \out\,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => aempty_fwft_fb_i,
      I4 => m_axi_arready,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => aempty_fwft_i
    );
\empty_fwft_fb_i_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA22"
    )
        port map (
      I0 => empty_fwft_fb_i,
      I1 => curr_fwft_state(1),
      I2 => m_axi_arready,
      I3 => curr_fwft_state(0),
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => empty_fwft_fb_i
    );
\empty_fwft_fb_o_i_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA22"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(1),
      I2 => m_axi_arready,
      I3 => curr_fwft_state(0),
      O => empty_fwft_fb_o_i0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => empty_fwft_fb_o_i
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => empty_fwft_i
    );
\gc0.count_d1[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axi_arready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => E(0)
    );
\goreg_dm.dout_i[61]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
        port map (
      I0 => \gpregsm1.user_valid_reg_0\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => m_axi_arready,
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => m_axi_arready,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axi_arready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => \gpregsm1.user_valid_reg_0\,
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => \gpregsm1.user_valid_reg_0\,
      D => next_fwft_state(1),
      Q => curr_fwft_state(1)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => \gpregsm1.user_valid_reg_0\,
      D => next_fwft_state(0),
      Q => user_valid
    );
m_axi_arvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_fwft_i,
      O => m_axi_arvalid
    );
\ram_empty_i_i_5__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DF0000000000DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axi_arready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      I4 => WR_PNTR_RD(0),
      I5 => Q(0),
      O => \gpregsm1.curr_fwft_state_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_fwft_4 is
  port (
    \gpregsm1.curr_fwft_state_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \gpregsm1.user_valid_reg_0\ : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_rd_fwft_4 : entity is "rd_fwft";
end base_auto_cc_1_rd_fwft_4;

architecture STRUCTURE of base_auto_cc_1_rd_fwft_4 is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
\aempty_fwft_fb_i_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF80EB00"
    )
        port map (
      I0 => \out\,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => aempty_fwft_fb_i,
      I4 => m_axi_wready,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => aempty_fwft_i
    );
\empty_fwft_fb_i_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA22"
    )
        port map (
      I0 => empty_fwft_fb_i,
      I1 => curr_fwft_state(1),
      I2 => m_axi_wready,
      I3 => curr_fwft_state(0),
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => empty_fwft_fb_i
    );
\empty_fwft_fb_o_i_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA22"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(1),
      I2 => m_axi_wready,
      I3 => curr_fwft_state(0),
      O => empty_fwft_fb_o_i0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => empty_fwft_fb_o_i
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \gpregsm1.user_valid_reg_0\,
      Q => empty_fwft_i
    );
\gc0.count_d1[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axi_wready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => E(0)
    );
\goreg_dm.dout_i[72]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
        port map (
      I0 => \gpregsm1.user_valid_reg_0\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => m_axi_wready,
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => m_axi_wready,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axi_wready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => \gpregsm1.user_valid_reg_0\,
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => \gpregsm1.user_valid_reg_0\,
      D => next_fwft_state(1),
      Q => curr_fwft_state(1)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => \gpregsm1.user_valid_reg_0\,
      D => next_fwft_state(0),
      Q => user_valid
    );
m_axi_wvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_fwft_i,
      O => m_axi_wvalid
    );
\ram_empty_i_i_5__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DF0000000000DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axi_wready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      I4 => WR_PNTR_RD(0),
      I5 => Q(0),
      O => \gpregsm1.curr_fwft_state_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_status_flags_as is
  port (
    \out\ : out STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ram_empty_i_reg_1 : in STD_LOGIC
  );
end base_auto_cc_1_rd_status_flags_as;

architecture STRUCTURE of base_auto_cc_1_rd_status_flags_as is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_empty_i_reg_0,
      PRE => ram_empty_i_reg_1,
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_empty_i_reg_0,
      PRE => ram_empty_i_reg_1,
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_status_flags_as_12 is
  port (
    \out\ : out STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    ram_empty_i_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_rd_status_flags_as_12 : entity is "rd_status_flags_as";
end base_auto_cc_1_rd_status_flags_as_12;

architecture STRUCTURE of base_auto_cc_1_rd_status_flags_as_12 is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => ram_empty_i_reg_0,
      PRE => ram_empty_i_reg_1,
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => ram_empty_i_reg_0,
      PRE => ram_empty_i_reg_1,
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_status_flags_as_19 is
  port (
    \out\ : out STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ram_empty_i_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_rd_status_flags_as_19 : entity is "rd_status_flags_as";
end base_auto_cc_1_rd_status_flags_as_19;

architecture STRUCTURE of base_auto_cc_1_rd_status_flags_as_19 is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_empty_i_reg_0,
      PRE => ram_empty_i_reg_1,
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_empty_i_reg_0,
      PRE => ram_empty_i_reg_1,
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_status_flags_as_28 is
  port (
    \out\ : out STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    ram_empty_i_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_rd_status_flags_as_28 : entity is "rd_status_flags_as";
end base_auto_cc_1_rd_status_flags_as_28;

architecture STRUCTURE of base_auto_cc_1_rd_status_flags_as_28 is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => ram_empty_i_reg_0,
      PRE => ram_empty_i_reg_1,
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => ram_empty_i_reg_0,
      PRE => ram_empty_i_reg_1,
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_status_flags_as_5 is
  port (
    \out\ : out STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    ram_empty_i_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_rd_status_flags_as_5 : entity is "rd_status_flags_as";
end base_auto_cc_1_rd_status_flags_as_5;

architecture STRUCTURE of base_auto_cc_1_rd_status_flags_as_5 is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => ram_empty_i_reg_0,
      PRE => ram_empty_i_reg_1,
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => ram_empty_i_reg_0,
      PRE => ram_empty_i_reg_1,
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_wr_bin_cntr is
  port (
    \dest_out_bin_ff_reg[3]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d2_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg : in STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg_1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end base_auto_cc_1_wr_bin_cntr;

architecture STRUCTURE of base_auto_cc_1_wr_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__6\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_full_i_i_4__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1__2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1__2\ : label is "soft_lutpair19";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gic0.gc0.count[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__6\(0)
    );
\gic0.gc0.count[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__6\(1)
    );
\gic0.gc0.count[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \plusOp__6\(2)
    );
\gic0.gc0.count[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \plusOp__6\(3)
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(0),
      PRE => AR(0),
      Q => p_14_out(0)
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(1),
      Q => p_14_out(1)
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(2),
      Q => p_14_out(2)
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(3),
      Q => p_14_out(3)
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(0),
      Q => \gic0.gc0.count_d2_reg[3]_0\(0)
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(1),
      Q => \gic0.gc0.count_d2_reg[3]_0\(1)
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(2),
      Q => \gic0.gc0.count_d2_reg[3]_0\(2)
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(3),
      Q => \gic0.gc0.count_d2_reg[3]_0\(3)
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__6\(0),
      Q => \^q\(0)
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__6\(1),
      PRE => AR(0),
      Q => \^q\(1)
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__6\(2),
      Q => \^q\(2)
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__6\(3),
      Q => \^q\(3)
    );
\ram_full_i_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F88F00008888"
    )
        port map (
      I0 => ram_full_i_reg,
      I1 => ram_full_i_reg_0,
      I2 => RD_PNTR_WR(3),
      I3 => p_14_out(3),
      I4 => ram_full_i_reg_1,
      I5 => \ram_full_i_i_4__2_n_0\,
      O => \dest_out_bin_ff_reg[3]\
    );
\ram_full_i_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_14_out(2),
      I1 => RD_PNTR_WR(2),
      I2 => p_14_out(1),
      I3 => RD_PNTR_WR(1),
      I4 => RD_PNTR_WR(0),
      I5 => p_14_out(0),
      O => \ram_full_i_i_4__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_wr_bin_cntr_10 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dest_out_bin_ff_reg[3]\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg : in STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg_1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_wr_bin_cntr_10 : entity is "wr_bin_cntr";
end base_auto_cc_1_wr_bin_cntr_10;

architecture STRUCTURE of base_auto_cc_1_wr_bin_cntr_10 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram_full_i_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1\ : label is "soft_lutpair11";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gic0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\gic0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\gic0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\gic0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => plusOp(3)
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(0),
      PRE => AR(0),
      Q => p_14_out(0)
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(1),
      Q => p_14_out(1)
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(2),
      Q => p_14_out(2)
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(3),
      Q => p_14_out(3)
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(0),
      Q => \gic0.gc0.count_d2_reg[3]_0\(0)
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(1),
      Q => \gic0.gc0.count_d2_reg[3]_0\(1)
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(2),
      Q => \gic0.gc0.count_d2_reg[3]_0\(2)
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(3),
      Q => \gic0.gc0.count_d2_reg[3]_0\(3)
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(0),
      Q => \^q\(0)
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => plusOp(1),
      PRE => AR(0),
      Q => \^q\(1)
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(2),
      Q => \^q\(2)
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(3),
      Q => \^q\(3)
    );
ram_full_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F88F00008888"
    )
        port map (
      I0 => ram_full_i_reg,
      I1 => ram_full_i_reg_0,
      I2 => RD_PNTR_WR(3),
      I3 => p_14_out(3),
      I4 => ram_full_i_reg_1,
      I5 => ram_full_i_i_4_n_0,
      O => \dest_out_bin_ff_reg[3]\
    );
ram_full_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_14_out(2),
      I1 => RD_PNTR_WR(2),
      I2 => p_14_out(1),
      I3 => RD_PNTR_WR(1),
      I4 => RD_PNTR_WR(0),
      I5 => p_14_out(0),
      O => ram_full_i_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_wr_bin_cntr_17 is
  port (
    \dest_out_bin_ff_reg[3]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d2_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg : in STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg_1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_wr_bin_cntr_17 : entity is "wr_bin_cntr";
end base_auto_cc_1_wr_bin_cntr_17;

architecture STRUCTURE of base_auto_cc_1_wr_bin_cntr_17 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__8\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_full_i_i_4__3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1__3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1__3\ : label is "soft_lutpair7";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gic0.gc0.count[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__8\(0)
    );
\gic0.gc0.count[1]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__8\(1)
    );
\gic0.gc0.count[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \plusOp__8\(2)
    );
\gic0.gc0.count[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \plusOp__8\(3)
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(0),
      PRE => AR(0),
      Q => p_14_out(0)
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(1),
      Q => p_14_out(1)
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(2),
      Q => p_14_out(2)
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(3),
      Q => p_14_out(3)
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(0),
      Q => \gic0.gc0.count_d2_reg[3]_0\(0)
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(1),
      Q => \gic0.gc0.count_d2_reg[3]_0\(1)
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(2),
      Q => \gic0.gc0.count_d2_reg[3]_0\(2)
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(3),
      Q => \gic0.gc0.count_d2_reg[3]_0\(3)
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__8\(0),
      Q => \^q\(0)
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__8\(1),
      PRE => AR(0),
      Q => \^q\(1)
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__8\(2),
      Q => \^q\(2)
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__8\(3),
      Q => \^q\(3)
    );
\ram_full_i_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F88F00008888"
    )
        port map (
      I0 => ram_full_i_reg,
      I1 => ram_full_i_reg_0,
      I2 => RD_PNTR_WR(3),
      I3 => p_14_out(3),
      I4 => ram_full_i_reg_1,
      I5 => \ram_full_i_i_4__3_n_0\,
      O => \dest_out_bin_ff_reg[3]\
    );
\ram_full_i_i_4__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_14_out(2),
      I1 => RD_PNTR_WR(2),
      I2 => p_14_out(1),
      I3 => RD_PNTR_WR(1),
      I4 => RD_PNTR_WR(0),
      I5 => p_14_out(0),
      O => \ram_full_i_i_4__3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_wr_bin_cntr_26 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dest_out_bin_ff_reg[3]\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg : in STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg_1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_wr_bin_cntr_26 : entity is "wr_bin_cntr";
end base_auto_cc_1_wr_bin_cntr_26;

architecture STRUCTURE of base_auto_cc_1_wr_bin_cntr_26 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_full_i_i_4__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1__1\ : label is "soft_lutpair3";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gic0.gc0.count[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__2\(0)
    );
\gic0.gc0.count[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__2\(1)
    );
\gic0.gc0.count[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \plusOp__2\(2)
    );
\gic0.gc0.count[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \plusOp__2\(3)
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(0),
      PRE => AR(0),
      Q => p_14_out(0)
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(1),
      Q => p_14_out(1)
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(2),
      Q => p_14_out(2)
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(3),
      Q => p_14_out(3)
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(0),
      Q => \gic0.gc0.count_d2_reg[3]_0\(0)
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(1),
      Q => \gic0.gc0.count_d2_reg[3]_0\(1)
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(2),
      Q => \gic0.gc0.count_d2_reg[3]_0\(2)
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(3),
      Q => \gic0.gc0.count_d2_reg[3]_0\(3)
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__2\(0),
      Q => \^q\(0)
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(1),
      PRE => AR(0),
      Q => \^q\(1)
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__2\(2),
      Q => \^q\(2)
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__2\(3),
      Q => \^q\(3)
    );
\ram_full_i_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F88F00008888"
    )
        port map (
      I0 => ram_full_i_reg,
      I1 => ram_full_i_reg_0,
      I2 => RD_PNTR_WR(3),
      I3 => p_14_out(3),
      I4 => ram_full_i_reg_1,
      I5 => \ram_full_i_i_4__1_n_0\,
      O => \dest_out_bin_ff_reg[3]\
    );
\ram_full_i_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_14_out(2),
      I1 => RD_PNTR_WR(2),
      I2 => p_14_out(1),
      I3 => RD_PNTR_WR(1),
      I4 => RD_PNTR_WR(0),
      I5 => p_14_out(0),
      O => \ram_full_i_i_4__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_wr_bin_cntr_3 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dest_out_bin_ff_reg[3]\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg : in STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg_1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_wr_bin_cntr_3 : entity is "wr_bin_cntr";
end base_auto_cc_1_wr_bin_cntr_3;

architecture STRUCTURE of base_auto_cc_1_wr_bin_cntr_3 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_full_i_i_4__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1__0\ : label is "soft_lutpair15";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gic0.gc0.count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__0\(0)
    );
\gic0.gc0.count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__0\(1)
    );
\gic0.gc0.count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \plusOp__0\(2)
    );
\gic0.gc0.count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \plusOp__0\(3)
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(0),
      PRE => AR(0),
      Q => p_14_out(0)
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(1),
      Q => p_14_out(1)
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(2),
      Q => p_14_out(2)
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(3),
      Q => p_14_out(3)
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(0),
      Q => \gic0.gc0.count_d2_reg[3]_0\(0)
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(1),
      Q => \gic0.gc0.count_d2_reg[3]_0\(1)
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(2),
      Q => \gic0.gc0.count_d2_reg[3]_0\(2)
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_14_out(3),
      Q => \gic0.gc0.count_d2_reg[3]_0\(3)
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(0),
      Q => \^q\(0)
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__0\(1),
      PRE => AR(0),
      Q => \^q\(1)
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(2),
      Q => \^q\(2)
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(3),
      Q => \^q\(3)
    );
\ram_full_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F88F00008888"
    )
        port map (
      I0 => ram_full_i_reg,
      I1 => ram_full_i_reg_0,
      I2 => RD_PNTR_WR(3),
      I3 => p_14_out(3),
      I4 => ram_full_i_reg_1,
      I5 => \ram_full_i_i_4__0_n_0\,
      O => \dest_out_bin_ff_reg[3]\
    );
\ram_full_i_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_14_out(2),
      I1 => RD_PNTR_WR(2),
      I2 => p_14_out(1),
      I3 => RD_PNTR_WR(1),
      I4 => RD_PNTR_WR(0),
      I5 => p_14_out(0),
      O => \ram_full_i_i_4__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_wr_status_flags_as is
  port (
    ram_full_fb_i_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end base_auto_cc_1_wr_status_flags_as;

architecture STRUCTURE of base_auto_cc_1_wr_status_flags_as is
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
\gic0.gc0.count_d1[3]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => ram_full_fb_i,
      O => E(0)
    );
m_axi_bready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => m_axi_bready
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => ram_full_i_reg_0,
      PRE => \out\,
      Q => ram_full_fb_i
    );
\ram_full_i_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => m_axi_bvalid,
      I2 => Q(0),
      I3 => RD_PNTR_WR(0),
      O => ram_full_fb_i_reg_0
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => ram_full_i_reg_0,
      PRE => \out\,
      Q => ram_full_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_wr_status_flags_as_16 is
  port (
    ram_full_fb_i_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_wr_status_flags_as_16 : entity is "wr_status_flags_as";
end base_auto_cc_1_wr_status_flags_as_16;

architecture STRUCTURE of base_auto_cc_1_wr_status_flags_as_16 is
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
\gic0.gc0.count_d1[3]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => ram_full_fb_i,
      O => E(0)
    );
m_axi_rready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => m_axi_rready
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => ram_full_i_reg_0,
      PRE => \out\,
      Q => ram_full_fb_i
    );
\ram_full_i_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => m_axi_rvalid,
      I2 => Q(0),
      I3 => RD_PNTR_WR(0),
      O => ram_full_fb_i_reg_0
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => ram_full_i_reg_0,
      PRE => \out\,
      Q => ram_full_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_wr_status_flags_as_2 is
  port (
    ram_full_fb_i_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_wr_status_flags_as_2 : entity is "wr_status_flags_as";
end base_auto_cc_1_wr_status_flags_as_2;

architecture STRUCTURE of base_auto_cc_1_wr_status_flags_as_2 is
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
\gic0.gc0.count_d1[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => ram_full_fb_i,
      O => E(0)
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_full_i_reg_0,
      PRE => \out\,
      Q => ram_full_fb_i
    );
\ram_full_i_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => s_axi_wvalid,
      I2 => Q(0),
      I3 => RD_PNTR_WR(0),
      O => ram_full_fb_i_reg_0
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_full_i_reg_0,
      PRE => \out\,
      Q => ram_full_i
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => s_axi_wready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_wr_status_flags_as_25 is
  port (
    ram_full_fb_i_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_wr_status_flags_as_25 : entity is "wr_status_flags_as";
end base_auto_cc_1_wr_status_flags_as_25;

architecture STRUCTURE of base_auto_cc_1_wr_status_flags_as_25 is
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
\gic0.gc0.count_d1[3]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => ram_full_fb_i,
      O => E(0)
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_full_i_reg_0,
      PRE => \out\,
      Q => ram_full_fb_i
    );
\ram_full_i_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => s_axi_arvalid,
      I2 => Q(0),
      I3 => RD_PNTR_WR(0),
      O => ram_full_fb_i_reg_0
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_full_i_reg_0,
      PRE => \out\,
      Q => ram_full_i
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => s_axi_arready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_wr_status_flags_as_9 is
  port (
    ram_full_fb_i_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_wr_status_flags_as_9 : entity is "wr_status_flags_as";
end base_auto_cc_1_wr_status_flags_as_9;

architecture STRUCTURE of base_auto_cc_1_wr_status_flags_as_9 is
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
\gic0.gc0.count_d1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => ram_full_fb_i,
      O => E(0)
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_full_i_reg_0,
      PRE => \out\,
      Q => ram_full_fb_i
    );
ram_full_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => s_axi_awvalid,
      I2 => Q(0),
      I3 => RD_PNTR_WR(0),
      O => ram_full_fb_i_reg_0
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_full_i_reg_0,
      PRE => \out\,
      Q => ram_full_i
    );
s_axi_awready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => s_axi_awready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_clk_x_pntrs is
  port (
    \dest_out_bin_ff_reg[2]\ : out STD_LOGIC;
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dest_out_bin_ff_reg[2]_0\ : out STD_LOGIC;
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_full_i_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_aclk : in STD_LOGIC;
    \src_gray_ff_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aclk : in STD_LOGIC;
    \src_gray_ff_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end base_auto_cc_1_clk_x_pntrs;

architecture STRUCTURE of base_auto_cc_1_clk_x_pntrs is
  signal \^rd_pntr_wr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^wr_pntr_rd\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 4;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 3;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 4;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
  RD_PNTR_WR(3 downto 0) <= \^rd_pntr_wr\(3 downto 0);
  WR_PNTR_RD(3 downto 0) <= \^wr_pntr_rd\(3 downto 0);
\ram_empty_i_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^wr_pntr_rd\(2),
      I1 => Q(2),
      I2 => \^wr_pntr_rd\(1),
      I3 => Q(1),
      I4 => Q(0),
      I5 => \^wr_pntr_rd\(0),
      O => \dest_out_bin_ff_reg[2]\
    );
\ram_full_i_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^rd_pntr_wr\(2),
      I1 => ram_full_i_reg(2),
      I2 => \^rd_pntr_wr\(1),
      I3 => ram_full_i_reg(1),
      I4 => ram_full_i_reg(0),
      I5 => \^rd_pntr_wr\(0),
      O => \dest_out_bin_ff_reg[2]_0\
    );
rd_pntr_cdc_inst: entity work.base_auto_cc_1_xpm_cdc_gray
     port map (
      dest_clk => m_aclk,
      dest_out_bin(3 downto 0) => \^rd_pntr_wr\(3 downto 0),
      src_clk => s_aclk,
      src_in_bin(3 downto 0) => \src_gray_ff_reg[3]_0\(3 downto 0)
    );
wr_pntr_cdc_inst: entity work.\base_auto_cc_1_xpm_cdc_gray__18\
     port map (
      dest_clk => s_aclk,
      dest_out_bin(3 downto 0) => \^wr_pntr_rd\(3 downto 0),
      src_clk => m_aclk,
      src_in_bin(3 downto 0) => \src_gray_ff_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_clk_x_pntrs__xdcDup__1\ is
  port (
    \dest_out_bin_ff_reg[2]\ : out STD_LOGIC;
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dest_out_bin_ff_reg[2]_0\ : out STD_LOGIC;
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_empty_i_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_aclk : in STD_LOGIC;
    \src_gray_ff_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_aclk : in STD_LOGIC;
    \src_gray_ff_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_clk_x_pntrs__xdcDup__1\ : entity is "clk_x_pntrs";
end \base_auto_cc_1_clk_x_pntrs__xdcDup__1\;

architecture STRUCTURE of \base_auto_cc_1_clk_x_pntrs__xdcDup__1\ is
  signal \^rd_pntr_wr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^wr_pntr_rd\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 4;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 3;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 4;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
  RD_PNTR_WR(3 downto 0) <= \^rd_pntr_wr\(3 downto 0);
  WR_PNTR_RD(3 downto 0) <= \^wr_pntr_rd\(3 downto 0);
\ram_empty_i_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^wr_pntr_rd\(2),
      I1 => ram_empty_i_reg(2),
      I2 => \^wr_pntr_rd\(1),
      I3 => ram_empty_i_reg(1),
      I4 => ram_empty_i_reg(0),
      I5 => \^wr_pntr_rd\(0),
      O => \dest_out_bin_ff_reg[2]_0\
    );
ram_full_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^rd_pntr_wr\(2),
      I1 => Q(2),
      I2 => \^rd_pntr_wr\(1),
      I3 => Q(1),
      I4 => Q(0),
      I5 => \^rd_pntr_wr\(0),
      O => \dest_out_bin_ff_reg[2]\
    );
rd_pntr_cdc_inst: entity work.\base_auto_cc_1_xpm_cdc_gray__11\
     port map (
      dest_clk => s_aclk,
      dest_out_bin(3 downto 0) => \^rd_pntr_wr\(3 downto 0),
      src_clk => m_aclk,
      src_in_bin(3 downto 0) => \src_gray_ff_reg[3]_0\(3 downto 0)
    );
wr_pntr_cdc_inst: entity work.\base_auto_cc_1_xpm_cdc_gray__10\
     port map (
      dest_clk => m_aclk,
      dest_out_bin(3 downto 0) => \^wr_pntr_rd\(3 downto 0),
      src_clk => s_aclk,
      src_in_bin(3 downto 0) => \src_gray_ff_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_clk_x_pntrs__xdcDup__2\ is
  port (
    \dest_out_bin_ff_reg[2]\ : out STD_LOGIC;
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dest_out_bin_ff_reg[2]_0\ : out STD_LOGIC;
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_empty_i_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_aclk : in STD_LOGIC;
    \src_gray_ff_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_aclk : in STD_LOGIC;
    \src_gray_ff_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_clk_x_pntrs__xdcDup__2\ : entity is "clk_x_pntrs";
end \base_auto_cc_1_clk_x_pntrs__xdcDup__2\;

architecture STRUCTURE of \base_auto_cc_1_clk_x_pntrs__xdcDup__2\ is
  signal \^rd_pntr_wr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^wr_pntr_rd\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 4;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 3;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 4;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
  RD_PNTR_WR(3 downto 0) <= \^rd_pntr_wr\(3 downto 0);
  WR_PNTR_RD(3 downto 0) <= \^wr_pntr_rd\(3 downto 0);
\ram_empty_i_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^wr_pntr_rd\(2),
      I1 => ram_empty_i_reg(2),
      I2 => \^wr_pntr_rd\(1),
      I3 => ram_empty_i_reg(1),
      I4 => ram_empty_i_reg(0),
      I5 => \^wr_pntr_rd\(0),
      O => \dest_out_bin_ff_reg[2]_0\
    );
\ram_full_i_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^rd_pntr_wr\(2),
      I1 => Q(2),
      I2 => \^rd_pntr_wr\(1),
      I3 => Q(1),
      I4 => Q(0),
      I5 => \^rd_pntr_wr\(0),
      O => \dest_out_bin_ff_reg[2]\
    );
rd_pntr_cdc_inst: entity work.\base_auto_cc_1_xpm_cdc_gray__13\
     port map (
      dest_clk => s_aclk,
      dest_out_bin(3 downto 0) => \^rd_pntr_wr\(3 downto 0),
      src_clk => m_aclk,
      src_in_bin(3 downto 0) => \src_gray_ff_reg[3]_0\(3 downto 0)
    );
wr_pntr_cdc_inst: entity work.\base_auto_cc_1_xpm_cdc_gray__12\
     port map (
      dest_clk => m_aclk,
      dest_out_bin(3 downto 0) => \^wr_pntr_rd\(3 downto 0),
      src_clk => s_aclk,
      src_in_bin(3 downto 0) => \src_gray_ff_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_clk_x_pntrs__xdcDup__3\ is
  port (
    \dest_out_bin_ff_reg[2]\ : out STD_LOGIC;
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dest_out_bin_ff_reg[2]_0\ : out STD_LOGIC;
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_full_i_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_aclk : in STD_LOGIC;
    \src_gray_ff_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aclk : in STD_LOGIC;
    \src_gray_ff_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_clk_x_pntrs__xdcDup__3\ : entity is "clk_x_pntrs";
end \base_auto_cc_1_clk_x_pntrs__xdcDup__3\;

architecture STRUCTURE of \base_auto_cc_1_clk_x_pntrs__xdcDup__3\ is
  signal \^rd_pntr_wr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^wr_pntr_rd\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 4;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 3;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 4;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
  RD_PNTR_WR(3 downto 0) <= \^rd_pntr_wr\(3 downto 0);
  WR_PNTR_RD(3 downto 0) <= \^wr_pntr_rd\(3 downto 0);
ram_empty_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^wr_pntr_rd\(2),
      I1 => Q(2),
      I2 => \^wr_pntr_rd\(1),
      I3 => Q(1),
      I4 => Q(0),
      I5 => \^wr_pntr_rd\(0),
      O => \dest_out_bin_ff_reg[2]\
    );
\ram_full_i_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^rd_pntr_wr\(2),
      I1 => ram_full_i_reg(2),
      I2 => \^rd_pntr_wr\(1),
      I3 => ram_full_i_reg(1),
      I4 => ram_full_i_reg(0),
      I5 => \^rd_pntr_wr\(0),
      O => \dest_out_bin_ff_reg[2]_0\
    );
rd_pntr_cdc_inst: entity work.\base_auto_cc_1_xpm_cdc_gray__15\
     port map (
      dest_clk => m_aclk,
      dest_out_bin(3 downto 0) => \^rd_pntr_wr\(3 downto 0),
      src_clk => s_aclk,
      src_in_bin(3 downto 0) => \src_gray_ff_reg[3]_0\(3 downto 0)
    );
wr_pntr_cdc_inst: entity work.\base_auto_cc_1_xpm_cdc_gray__14\
     port map (
      dest_clk => s_aclk,
      dest_out_bin(3 downto 0) => \^wr_pntr_rd\(3 downto 0),
      src_clk => m_aclk,
      src_in_bin(3 downto 0) => \src_gray_ff_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_clk_x_pntrs__xdcDup__4\ is
  port (
    \dest_out_bin_ff_reg[2]\ : out STD_LOGIC;
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dest_out_bin_ff_reg[2]_0\ : out STD_LOGIC;
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_empty_i_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_aclk : in STD_LOGIC;
    \src_gray_ff_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_aclk : in STD_LOGIC;
    \src_gray_ff_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_clk_x_pntrs__xdcDup__4\ : entity is "clk_x_pntrs";
end \base_auto_cc_1_clk_x_pntrs__xdcDup__4\;

architecture STRUCTURE of \base_auto_cc_1_clk_x_pntrs__xdcDup__4\ is
  signal \^rd_pntr_wr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^wr_pntr_rd\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 4;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 3;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 4;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
  RD_PNTR_WR(3 downto 0) <= \^rd_pntr_wr\(3 downto 0);
  WR_PNTR_RD(3 downto 0) <= \^wr_pntr_rd\(3 downto 0);
\ram_empty_i_i_4__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^wr_pntr_rd\(2),
      I1 => ram_empty_i_reg(2),
      I2 => \^wr_pntr_rd\(1),
      I3 => ram_empty_i_reg(1),
      I4 => ram_empty_i_reg(0),
      I5 => \^wr_pntr_rd\(0),
      O => \dest_out_bin_ff_reg[2]_0\
    );
\ram_full_i_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^rd_pntr_wr\(2),
      I1 => Q(2),
      I2 => \^rd_pntr_wr\(1),
      I3 => Q(1),
      I4 => Q(0),
      I5 => \^rd_pntr_wr\(0),
      O => \dest_out_bin_ff_reg[2]\
    );
rd_pntr_cdc_inst: entity work.\base_auto_cc_1_xpm_cdc_gray__17\
     port map (
      dest_clk => s_aclk,
      dest_out_bin(3 downto 0) => \^rd_pntr_wr\(3 downto 0),
      src_clk => m_aclk,
      src_in_bin(3 downto 0) => \src_gray_ff_reg[3]_0\(3 downto 0)
    );
wr_pntr_cdc_inst: entity work.\base_auto_cc_1_xpm_cdc_gray__16\
     port map (
      dest_clk => m_aclk,
      dest_out_bin(3 downto 0) => \^wr_pntr_rd\(3 downto 0),
      src_clk => s_aclk,
      src_in_bin(3 downto 0) => \src_gray_ff_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_memory is
  port (
    Q : out STD_LOGIC_VECTOR ( 61 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    EN : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 61 downto 0 );
    count_d1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[1]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[61]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end base_auto_cc_1_memory;

architecture STRUCTURE of base_auto_cc_1_memory is
  signal \gdm.dm_gen.dm_n_0\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_1\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_10\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_11\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_12\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_13\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_14\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_15\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_16\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_17\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_18\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_19\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_2\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_20\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_21\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_22\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_23\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_24\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_25\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_26\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_27\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_28\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_29\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_3\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_30\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_31\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_32\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_33\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_34\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_35\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_36\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_37\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_38\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_39\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_4\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_40\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_41\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_42\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_43\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_44\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_45\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_46\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_47\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_48\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_49\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_5\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_50\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_51\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_52\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_53\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_54\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_55\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_56\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_57\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_58\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_59\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_6\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_60\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_61\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_7\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_8\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_9\ : STD_LOGIC;
begin
\gdm.dm_gen.dm\: entity work.base_auto_cc_1_dmem
     port map (
      DI(61 downto 0) => DI(61 downto 0),
      EN => EN,
      count_d1(3 downto 0) => count_d1(3 downto 0),
      dout_i(61) => \gdm.dm_gen.dm_n_0\,
      dout_i(60) => \gdm.dm_gen.dm_n_1\,
      dout_i(59) => \gdm.dm_gen.dm_n_2\,
      dout_i(58) => \gdm.dm_gen.dm_n_3\,
      dout_i(57) => \gdm.dm_gen.dm_n_4\,
      dout_i(56) => \gdm.dm_gen.dm_n_5\,
      dout_i(55) => \gdm.dm_gen.dm_n_6\,
      dout_i(54) => \gdm.dm_gen.dm_n_7\,
      dout_i(53) => \gdm.dm_gen.dm_n_8\,
      dout_i(52) => \gdm.dm_gen.dm_n_9\,
      dout_i(51) => \gdm.dm_gen.dm_n_10\,
      dout_i(50) => \gdm.dm_gen.dm_n_11\,
      dout_i(49) => \gdm.dm_gen.dm_n_12\,
      dout_i(48) => \gdm.dm_gen.dm_n_13\,
      dout_i(47) => \gdm.dm_gen.dm_n_14\,
      dout_i(46) => \gdm.dm_gen.dm_n_15\,
      dout_i(45) => \gdm.dm_gen.dm_n_16\,
      dout_i(44) => \gdm.dm_gen.dm_n_17\,
      dout_i(43) => \gdm.dm_gen.dm_n_18\,
      dout_i(42) => \gdm.dm_gen.dm_n_19\,
      dout_i(41) => \gdm.dm_gen.dm_n_20\,
      dout_i(40) => \gdm.dm_gen.dm_n_21\,
      dout_i(39) => \gdm.dm_gen.dm_n_22\,
      dout_i(38) => \gdm.dm_gen.dm_n_23\,
      dout_i(37) => \gdm.dm_gen.dm_n_24\,
      dout_i(36) => \gdm.dm_gen.dm_n_25\,
      dout_i(35) => \gdm.dm_gen.dm_n_26\,
      dout_i(34) => \gdm.dm_gen.dm_n_27\,
      dout_i(33) => \gdm.dm_gen.dm_n_28\,
      dout_i(32) => \gdm.dm_gen.dm_n_29\,
      dout_i(31) => \gdm.dm_gen.dm_n_30\,
      dout_i(30) => \gdm.dm_gen.dm_n_31\,
      dout_i(29) => \gdm.dm_gen.dm_n_32\,
      dout_i(28) => \gdm.dm_gen.dm_n_33\,
      dout_i(27) => \gdm.dm_gen.dm_n_34\,
      dout_i(26) => \gdm.dm_gen.dm_n_35\,
      dout_i(25) => \gdm.dm_gen.dm_n_36\,
      dout_i(24) => \gdm.dm_gen.dm_n_37\,
      dout_i(23) => \gdm.dm_gen.dm_n_38\,
      dout_i(22) => \gdm.dm_gen.dm_n_39\,
      dout_i(21) => \gdm.dm_gen.dm_n_40\,
      dout_i(20) => \gdm.dm_gen.dm_n_41\,
      dout_i(19) => \gdm.dm_gen.dm_n_42\,
      dout_i(18) => \gdm.dm_gen.dm_n_43\,
      dout_i(17) => \gdm.dm_gen.dm_n_44\,
      dout_i(16) => \gdm.dm_gen.dm_n_45\,
      dout_i(15) => \gdm.dm_gen.dm_n_46\,
      dout_i(14) => \gdm.dm_gen.dm_n_47\,
      dout_i(13) => \gdm.dm_gen.dm_n_48\,
      dout_i(12) => \gdm.dm_gen.dm_n_49\,
      dout_i(11) => \gdm.dm_gen.dm_n_50\,
      dout_i(10) => \gdm.dm_gen.dm_n_51\,
      dout_i(9) => \gdm.dm_gen.dm_n_52\,
      dout_i(8) => \gdm.dm_gen.dm_n_53\,
      dout_i(7) => \gdm.dm_gen.dm_n_54\,
      dout_i(6) => \gdm.dm_gen.dm_n_55\,
      dout_i(5) => \gdm.dm_gen.dm_n_56\,
      dout_i(4) => \gdm.dm_gen.dm_n_57\,
      dout_i(3) => \gdm.dm_gen.dm_n_58\,
      dout_i(2) => \gdm.dm_gen.dm_n_59\,
      dout_i(1) => \gdm.dm_gen.dm_n_60\,
      dout_i(0) => \gdm.dm_gen.dm_n_61\,
      \gpr1.dout_i_reg[1]_0\(3 downto 0) => \gpr1.dout_i_reg[1]\(3 downto 0),
      \gpr1.dout_i_reg[61]_0\(0) => \gpr1.dout_i_reg[61]\(0),
      m_aclk => m_aclk,
      s_aclk => s_aclk
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_61\,
      Q => Q(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_51\,
      Q => Q(10),
      R => '0'
    );
\goreg_dm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_50\,
      Q => Q(11),
      R => '0'
    );
\goreg_dm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_49\,
      Q => Q(12),
      R => '0'
    );
\goreg_dm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_48\,
      Q => Q(13),
      R => '0'
    );
\goreg_dm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_47\,
      Q => Q(14),
      R => '0'
    );
\goreg_dm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_46\,
      Q => Q(15),
      R => '0'
    );
\goreg_dm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_45\,
      Q => Q(16),
      R => '0'
    );
\goreg_dm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_44\,
      Q => Q(17),
      R => '0'
    );
\goreg_dm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_43\,
      Q => Q(18),
      R => '0'
    );
\goreg_dm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_42\,
      Q => Q(19),
      R => '0'
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_60\,
      Q => Q(1),
      R => '0'
    );
\goreg_dm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_41\,
      Q => Q(20),
      R => '0'
    );
\goreg_dm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_40\,
      Q => Q(21),
      R => '0'
    );
\goreg_dm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_39\,
      Q => Q(22),
      R => '0'
    );
\goreg_dm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_38\,
      Q => Q(23),
      R => '0'
    );
\goreg_dm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_37\,
      Q => Q(24),
      R => '0'
    );
\goreg_dm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_36\,
      Q => Q(25),
      R => '0'
    );
\goreg_dm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_35\,
      Q => Q(26),
      R => '0'
    );
\goreg_dm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_34\,
      Q => Q(27),
      R => '0'
    );
\goreg_dm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_33\,
      Q => Q(28),
      R => '0'
    );
\goreg_dm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_32\,
      Q => Q(29),
      R => '0'
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_59\,
      Q => Q(2),
      R => '0'
    );
\goreg_dm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_31\,
      Q => Q(30),
      R => '0'
    );
\goreg_dm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_30\,
      Q => Q(31),
      R => '0'
    );
\goreg_dm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_29\,
      Q => Q(32),
      R => '0'
    );
\goreg_dm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_28\,
      Q => Q(33),
      R => '0'
    );
\goreg_dm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_27\,
      Q => Q(34),
      R => '0'
    );
\goreg_dm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_26\,
      Q => Q(35),
      R => '0'
    );
\goreg_dm.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_25\,
      Q => Q(36),
      R => '0'
    );
\goreg_dm.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_24\,
      Q => Q(37),
      R => '0'
    );
\goreg_dm.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_23\,
      Q => Q(38),
      R => '0'
    );
\goreg_dm.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_22\,
      Q => Q(39),
      R => '0'
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_58\,
      Q => Q(3),
      R => '0'
    );
\goreg_dm.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_21\,
      Q => Q(40),
      R => '0'
    );
\goreg_dm.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_20\,
      Q => Q(41),
      R => '0'
    );
\goreg_dm.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_19\,
      Q => Q(42),
      R => '0'
    );
\goreg_dm.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_18\,
      Q => Q(43),
      R => '0'
    );
\goreg_dm.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_17\,
      Q => Q(44),
      R => '0'
    );
\goreg_dm.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_16\,
      Q => Q(45),
      R => '0'
    );
\goreg_dm.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_15\,
      Q => Q(46),
      R => '0'
    );
\goreg_dm.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_14\,
      Q => Q(47),
      R => '0'
    );
\goreg_dm.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_13\,
      Q => Q(48),
      R => '0'
    );
\goreg_dm.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_12\,
      Q => Q(49),
      R => '0'
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_57\,
      Q => Q(4),
      R => '0'
    );
\goreg_dm.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_11\,
      Q => Q(50),
      R => '0'
    );
\goreg_dm.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_10\,
      Q => Q(51),
      R => '0'
    );
\goreg_dm.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_9\,
      Q => Q(52),
      R => '0'
    );
\goreg_dm.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_8\,
      Q => Q(53),
      R => '0'
    );
\goreg_dm.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_7\,
      Q => Q(54),
      R => '0'
    );
\goreg_dm.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_6\,
      Q => Q(55),
      R => '0'
    );
\goreg_dm.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_5\,
      Q => Q(56),
      R => '0'
    );
\goreg_dm.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_4\,
      Q => Q(57),
      R => '0'
    );
\goreg_dm.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_3\,
      Q => Q(58),
      R => '0'
    );
\goreg_dm.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_2\,
      Q => Q(59),
      R => '0'
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_56\,
      Q => Q(5),
      R => '0'
    );
\goreg_dm.dout_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_1\,
      Q => Q(60),
      R => '0'
    );
\goreg_dm.dout_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_0\,
      Q => Q(61),
      R => '0'
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_55\,
      Q => Q(6),
      R => '0'
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_54\,
      Q => Q(7),
      R => '0'
    );
\goreg_dm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_53\,
      Q => Q(8),
      R => '0'
    );
\goreg_dm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_52\,
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_memory_23 is
  port (
    \goreg_dm.dout_i_reg[61]_0\ : out STD_LOGIC_VECTOR ( 61 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    I67 : in STD_LOGIC;
    I474 : in STD_LOGIC_VECTOR ( 61 downto 0 );
    count_d1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[1]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[61]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_memory_23 : entity is "memory";
end base_auto_cc_1_memory_23;

architecture STRUCTURE of base_auto_cc_1_memory_23 is
  signal \gdm.dm_gen.dm_n_0\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_1\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_10\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_11\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_12\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_13\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_14\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_15\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_16\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_17\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_18\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_19\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_2\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_20\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_21\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_22\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_23\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_24\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_25\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_26\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_27\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_28\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_29\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_3\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_30\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_31\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_32\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_33\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_34\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_35\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_36\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_37\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_38\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_39\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_4\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_40\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_41\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_42\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_43\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_44\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_45\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_46\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_47\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_48\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_49\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_5\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_50\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_51\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_52\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_53\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_54\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_55\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_56\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_57\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_58\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_59\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_6\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_60\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_61\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_7\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_8\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_9\ : STD_LOGIC;
begin
\gdm.dm_gen.dm\: entity work.base_auto_cc_1_dmem_24
     port map (
      I474(61 downto 0) => I474(61 downto 0),
      I67 => I67,
      count_d1(3 downto 0) => count_d1(3 downto 0),
      dout_i(61) => \gdm.dm_gen.dm_n_0\,
      dout_i(60) => \gdm.dm_gen.dm_n_1\,
      dout_i(59) => \gdm.dm_gen.dm_n_2\,
      dout_i(58) => \gdm.dm_gen.dm_n_3\,
      dout_i(57) => \gdm.dm_gen.dm_n_4\,
      dout_i(56) => \gdm.dm_gen.dm_n_5\,
      dout_i(55) => \gdm.dm_gen.dm_n_6\,
      dout_i(54) => \gdm.dm_gen.dm_n_7\,
      dout_i(53) => \gdm.dm_gen.dm_n_8\,
      dout_i(52) => \gdm.dm_gen.dm_n_9\,
      dout_i(51) => \gdm.dm_gen.dm_n_10\,
      dout_i(50) => \gdm.dm_gen.dm_n_11\,
      dout_i(49) => \gdm.dm_gen.dm_n_12\,
      dout_i(48) => \gdm.dm_gen.dm_n_13\,
      dout_i(47) => \gdm.dm_gen.dm_n_14\,
      dout_i(46) => \gdm.dm_gen.dm_n_15\,
      dout_i(45) => \gdm.dm_gen.dm_n_16\,
      dout_i(44) => \gdm.dm_gen.dm_n_17\,
      dout_i(43) => \gdm.dm_gen.dm_n_18\,
      dout_i(42) => \gdm.dm_gen.dm_n_19\,
      dout_i(41) => \gdm.dm_gen.dm_n_20\,
      dout_i(40) => \gdm.dm_gen.dm_n_21\,
      dout_i(39) => \gdm.dm_gen.dm_n_22\,
      dout_i(38) => \gdm.dm_gen.dm_n_23\,
      dout_i(37) => \gdm.dm_gen.dm_n_24\,
      dout_i(36) => \gdm.dm_gen.dm_n_25\,
      dout_i(35) => \gdm.dm_gen.dm_n_26\,
      dout_i(34) => \gdm.dm_gen.dm_n_27\,
      dout_i(33) => \gdm.dm_gen.dm_n_28\,
      dout_i(32) => \gdm.dm_gen.dm_n_29\,
      dout_i(31) => \gdm.dm_gen.dm_n_30\,
      dout_i(30) => \gdm.dm_gen.dm_n_31\,
      dout_i(29) => \gdm.dm_gen.dm_n_32\,
      dout_i(28) => \gdm.dm_gen.dm_n_33\,
      dout_i(27) => \gdm.dm_gen.dm_n_34\,
      dout_i(26) => \gdm.dm_gen.dm_n_35\,
      dout_i(25) => \gdm.dm_gen.dm_n_36\,
      dout_i(24) => \gdm.dm_gen.dm_n_37\,
      dout_i(23) => \gdm.dm_gen.dm_n_38\,
      dout_i(22) => \gdm.dm_gen.dm_n_39\,
      dout_i(21) => \gdm.dm_gen.dm_n_40\,
      dout_i(20) => \gdm.dm_gen.dm_n_41\,
      dout_i(19) => \gdm.dm_gen.dm_n_42\,
      dout_i(18) => \gdm.dm_gen.dm_n_43\,
      dout_i(17) => \gdm.dm_gen.dm_n_44\,
      dout_i(16) => \gdm.dm_gen.dm_n_45\,
      dout_i(15) => \gdm.dm_gen.dm_n_46\,
      dout_i(14) => \gdm.dm_gen.dm_n_47\,
      dout_i(13) => \gdm.dm_gen.dm_n_48\,
      dout_i(12) => \gdm.dm_gen.dm_n_49\,
      dout_i(11) => \gdm.dm_gen.dm_n_50\,
      dout_i(10) => \gdm.dm_gen.dm_n_51\,
      dout_i(9) => \gdm.dm_gen.dm_n_52\,
      dout_i(8) => \gdm.dm_gen.dm_n_53\,
      dout_i(7) => \gdm.dm_gen.dm_n_54\,
      dout_i(6) => \gdm.dm_gen.dm_n_55\,
      dout_i(5) => \gdm.dm_gen.dm_n_56\,
      dout_i(4) => \gdm.dm_gen.dm_n_57\,
      dout_i(3) => \gdm.dm_gen.dm_n_58\,
      dout_i(2) => \gdm.dm_gen.dm_n_59\,
      dout_i(1) => \gdm.dm_gen.dm_n_60\,
      dout_i(0) => \gdm.dm_gen.dm_n_61\,
      \gpr1.dout_i_reg[1]_0\(3 downto 0) => \gpr1.dout_i_reg[1]\(3 downto 0),
      \gpr1.dout_i_reg[61]_0\(0) => \gpr1.dout_i_reg[61]\(0),
      m_aclk => m_aclk,
      s_aclk => s_aclk
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_61\,
      Q => \goreg_dm.dout_i_reg[61]_0\(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_51\,
      Q => \goreg_dm.dout_i_reg[61]_0\(10),
      R => '0'
    );
\goreg_dm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_50\,
      Q => \goreg_dm.dout_i_reg[61]_0\(11),
      R => '0'
    );
\goreg_dm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_49\,
      Q => \goreg_dm.dout_i_reg[61]_0\(12),
      R => '0'
    );
\goreg_dm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_48\,
      Q => \goreg_dm.dout_i_reg[61]_0\(13),
      R => '0'
    );
\goreg_dm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_47\,
      Q => \goreg_dm.dout_i_reg[61]_0\(14),
      R => '0'
    );
\goreg_dm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_46\,
      Q => \goreg_dm.dout_i_reg[61]_0\(15),
      R => '0'
    );
\goreg_dm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_45\,
      Q => \goreg_dm.dout_i_reg[61]_0\(16),
      R => '0'
    );
\goreg_dm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_44\,
      Q => \goreg_dm.dout_i_reg[61]_0\(17),
      R => '0'
    );
\goreg_dm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_43\,
      Q => \goreg_dm.dout_i_reg[61]_0\(18),
      R => '0'
    );
\goreg_dm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_42\,
      Q => \goreg_dm.dout_i_reg[61]_0\(19),
      R => '0'
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_60\,
      Q => \goreg_dm.dout_i_reg[61]_0\(1),
      R => '0'
    );
\goreg_dm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_41\,
      Q => \goreg_dm.dout_i_reg[61]_0\(20),
      R => '0'
    );
\goreg_dm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_40\,
      Q => \goreg_dm.dout_i_reg[61]_0\(21),
      R => '0'
    );
\goreg_dm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_39\,
      Q => \goreg_dm.dout_i_reg[61]_0\(22),
      R => '0'
    );
\goreg_dm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_38\,
      Q => \goreg_dm.dout_i_reg[61]_0\(23),
      R => '0'
    );
\goreg_dm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_37\,
      Q => \goreg_dm.dout_i_reg[61]_0\(24),
      R => '0'
    );
\goreg_dm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_36\,
      Q => \goreg_dm.dout_i_reg[61]_0\(25),
      R => '0'
    );
\goreg_dm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_35\,
      Q => \goreg_dm.dout_i_reg[61]_0\(26),
      R => '0'
    );
\goreg_dm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_34\,
      Q => \goreg_dm.dout_i_reg[61]_0\(27),
      R => '0'
    );
\goreg_dm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_33\,
      Q => \goreg_dm.dout_i_reg[61]_0\(28),
      R => '0'
    );
\goreg_dm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_32\,
      Q => \goreg_dm.dout_i_reg[61]_0\(29),
      R => '0'
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_59\,
      Q => \goreg_dm.dout_i_reg[61]_0\(2),
      R => '0'
    );
\goreg_dm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_31\,
      Q => \goreg_dm.dout_i_reg[61]_0\(30),
      R => '0'
    );
\goreg_dm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_30\,
      Q => \goreg_dm.dout_i_reg[61]_0\(31),
      R => '0'
    );
\goreg_dm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_29\,
      Q => \goreg_dm.dout_i_reg[61]_0\(32),
      R => '0'
    );
\goreg_dm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_28\,
      Q => \goreg_dm.dout_i_reg[61]_0\(33),
      R => '0'
    );
\goreg_dm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_27\,
      Q => \goreg_dm.dout_i_reg[61]_0\(34),
      R => '0'
    );
\goreg_dm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_26\,
      Q => \goreg_dm.dout_i_reg[61]_0\(35),
      R => '0'
    );
\goreg_dm.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_25\,
      Q => \goreg_dm.dout_i_reg[61]_0\(36),
      R => '0'
    );
\goreg_dm.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_24\,
      Q => \goreg_dm.dout_i_reg[61]_0\(37),
      R => '0'
    );
\goreg_dm.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_23\,
      Q => \goreg_dm.dout_i_reg[61]_0\(38),
      R => '0'
    );
\goreg_dm.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_22\,
      Q => \goreg_dm.dout_i_reg[61]_0\(39),
      R => '0'
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_58\,
      Q => \goreg_dm.dout_i_reg[61]_0\(3),
      R => '0'
    );
\goreg_dm.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_21\,
      Q => \goreg_dm.dout_i_reg[61]_0\(40),
      R => '0'
    );
\goreg_dm.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_20\,
      Q => \goreg_dm.dout_i_reg[61]_0\(41),
      R => '0'
    );
\goreg_dm.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_19\,
      Q => \goreg_dm.dout_i_reg[61]_0\(42),
      R => '0'
    );
\goreg_dm.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_18\,
      Q => \goreg_dm.dout_i_reg[61]_0\(43),
      R => '0'
    );
\goreg_dm.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_17\,
      Q => \goreg_dm.dout_i_reg[61]_0\(44),
      R => '0'
    );
\goreg_dm.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_16\,
      Q => \goreg_dm.dout_i_reg[61]_0\(45),
      R => '0'
    );
\goreg_dm.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_15\,
      Q => \goreg_dm.dout_i_reg[61]_0\(46),
      R => '0'
    );
\goreg_dm.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_14\,
      Q => \goreg_dm.dout_i_reg[61]_0\(47),
      R => '0'
    );
\goreg_dm.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_13\,
      Q => \goreg_dm.dout_i_reg[61]_0\(48),
      R => '0'
    );
\goreg_dm.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_12\,
      Q => \goreg_dm.dout_i_reg[61]_0\(49),
      R => '0'
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_57\,
      Q => \goreg_dm.dout_i_reg[61]_0\(4),
      R => '0'
    );
\goreg_dm.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_11\,
      Q => \goreg_dm.dout_i_reg[61]_0\(50),
      R => '0'
    );
\goreg_dm.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_10\,
      Q => \goreg_dm.dout_i_reg[61]_0\(51),
      R => '0'
    );
\goreg_dm.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_9\,
      Q => \goreg_dm.dout_i_reg[61]_0\(52),
      R => '0'
    );
\goreg_dm.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_8\,
      Q => \goreg_dm.dout_i_reg[61]_0\(53),
      R => '0'
    );
\goreg_dm.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_7\,
      Q => \goreg_dm.dout_i_reg[61]_0\(54),
      R => '0'
    );
\goreg_dm.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_6\,
      Q => \goreg_dm.dout_i_reg[61]_0\(55),
      R => '0'
    );
\goreg_dm.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_5\,
      Q => \goreg_dm.dout_i_reg[61]_0\(56),
      R => '0'
    );
\goreg_dm.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_4\,
      Q => \goreg_dm.dout_i_reg[61]_0\(57),
      R => '0'
    );
\goreg_dm.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_3\,
      Q => \goreg_dm.dout_i_reg[61]_0\(58),
      R => '0'
    );
\goreg_dm.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_2\,
      Q => \goreg_dm.dout_i_reg[61]_0\(59),
      R => '0'
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_56\,
      Q => \goreg_dm.dout_i_reg[61]_0\(5),
      R => '0'
    );
\goreg_dm.dout_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_1\,
      Q => \goreg_dm.dout_i_reg[61]_0\(60),
      R => '0'
    );
\goreg_dm.dout_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_0\,
      Q => \goreg_dm.dout_i_reg[61]_0\(61),
      R => '0'
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_55\,
      Q => \goreg_dm.dout_i_reg[61]_0\(6),
      R => '0'
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_54\,
      Q => \goreg_dm.dout_i_reg[61]_0\(7),
      R => '0'
    );
\goreg_dm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_53\,
      Q => \goreg_dm.dout_i_reg[61]_0\(8),
      R => '0'
    );
\goreg_dm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_52\,
      Q => \goreg_dm.dout_i_reg[61]_0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_memory__parameterized0\ is
  port (
    \goreg_dm.dout_i_reg[72]_0\ : out STD_LOGIC_VECTOR ( 72 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    I59 : in STD_LOGIC;
    I468 : in STD_LOGIC_VECTOR ( 72 downto 0 );
    count_d1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[1]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[72]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_memory__parameterized0\ : entity is "memory";
end \base_auto_cc_1_memory__parameterized0\;

architecture STRUCTURE of \base_auto_cc_1_memory__parameterized0\ is
  signal \gdm.dm_gen.dm_n_0\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_1\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_10\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_11\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_12\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_13\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_14\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_15\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_16\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_17\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_18\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_19\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_2\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_20\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_21\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_22\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_23\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_24\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_25\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_26\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_27\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_28\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_29\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_3\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_30\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_31\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_32\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_33\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_34\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_35\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_36\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_37\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_38\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_39\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_4\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_40\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_41\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_42\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_43\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_44\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_45\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_46\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_47\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_48\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_49\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_5\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_50\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_51\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_52\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_53\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_54\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_55\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_56\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_57\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_58\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_59\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_6\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_60\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_61\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_62\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_63\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_64\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_65\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_66\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_67\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_68\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_69\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_7\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_70\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_71\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_72\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_8\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_9\ : STD_LOGIC;
begin
\gdm.dm_gen.dm\: entity work.\base_auto_cc_1_dmem__parameterized0\
     port map (
      I468(72 downto 0) => I468(72 downto 0),
      I59 => I59,
      count_d1(3 downto 0) => count_d1(3 downto 0),
      dout_i(72) => \gdm.dm_gen.dm_n_0\,
      dout_i(71) => \gdm.dm_gen.dm_n_1\,
      dout_i(70) => \gdm.dm_gen.dm_n_2\,
      dout_i(69) => \gdm.dm_gen.dm_n_3\,
      dout_i(68) => \gdm.dm_gen.dm_n_4\,
      dout_i(67) => \gdm.dm_gen.dm_n_5\,
      dout_i(66) => \gdm.dm_gen.dm_n_6\,
      dout_i(65) => \gdm.dm_gen.dm_n_7\,
      dout_i(64) => \gdm.dm_gen.dm_n_8\,
      dout_i(63) => \gdm.dm_gen.dm_n_9\,
      dout_i(62) => \gdm.dm_gen.dm_n_10\,
      dout_i(61) => \gdm.dm_gen.dm_n_11\,
      dout_i(60) => \gdm.dm_gen.dm_n_12\,
      dout_i(59) => \gdm.dm_gen.dm_n_13\,
      dout_i(58) => \gdm.dm_gen.dm_n_14\,
      dout_i(57) => \gdm.dm_gen.dm_n_15\,
      dout_i(56) => \gdm.dm_gen.dm_n_16\,
      dout_i(55) => \gdm.dm_gen.dm_n_17\,
      dout_i(54) => \gdm.dm_gen.dm_n_18\,
      dout_i(53) => \gdm.dm_gen.dm_n_19\,
      dout_i(52) => \gdm.dm_gen.dm_n_20\,
      dout_i(51) => \gdm.dm_gen.dm_n_21\,
      dout_i(50) => \gdm.dm_gen.dm_n_22\,
      dout_i(49) => \gdm.dm_gen.dm_n_23\,
      dout_i(48) => \gdm.dm_gen.dm_n_24\,
      dout_i(47) => \gdm.dm_gen.dm_n_25\,
      dout_i(46) => \gdm.dm_gen.dm_n_26\,
      dout_i(45) => \gdm.dm_gen.dm_n_27\,
      dout_i(44) => \gdm.dm_gen.dm_n_28\,
      dout_i(43) => \gdm.dm_gen.dm_n_29\,
      dout_i(42) => \gdm.dm_gen.dm_n_30\,
      dout_i(41) => \gdm.dm_gen.dm_n_31\,
      dout_i(40) => \gdm.dm_gen.dm_n_32\,
      dout_i(39) => \gdm.dm_gen.dm_n_33\,
      dout_i(38) => \gdm.dm_gen.dm_n_34\,
      dout_i(37) => \gdm.dm_gen.dm_n_35\,
      dout_i(36) => \gdm.dm_gen.dm_n_36\,
      dout_i(35) => \gdm.dm_gen.dm_n_37\,
      dout_i(34) => \gdm.dm_gen.dm_n_38\,
      dout_i(33) => \gdm.dm_gen.dm_n_39\,
      dout_i(32) => \gdm.dm_gen.dm_n_40\,
      dout_i(31) => \gdm.dm_gen.dm_n_41\,
      dout_i(30) => \gdm.dm_gen.dm_n_42\,
      dout_i(29) => \gdm.dm_gen.dm_n_43\,
      dout_i(28) => \gdm.dm_gen.dm_n_44\,
      dout_i(27) => \gdm.dm_gen.dm_n_45\,
      dout_i(26) => \gdm.dm_gen.dm_n_46\,
      dout_i(25) => \gdm.dm_gen.dm_n_47\,
      dout_i(24) => \gdm.dm_gen.dm_n_48\,
      dout_i(23) => \gdm.dm_gen.dm_n_49\,
      dout_i(22) => \gdm.dm_gen.dm_n_50\,
      dout_i(21) => \gdm.dm_gen.dm_n_51\,
      dout_i(20) => \gdm.dm_gen.dm_n_52\,
      dout_i(19) => \gdm.dm_gen.dm_n_53\,
      dout_i(18) => \gdm.dm_gen.dm_n_54\,
      dout_i(17) => \gdm.dm_gen.dm_n_55\,
      dout_i(16) => \gdm.dm_gen.dm_n_56\,
      dout_i(15) => \gdm.dm_gen.dm_n_57\,
      dout_i(14) => \gdm.dm_gen.dm_n_58\,
      dout_i(13) => \gdm.dm_gen.dm_n_59\,
      dout_i(12) => \gdm.dm_gen.dm_n_60\,
      dout_i(11) => \gdm.dm_gen.dm_n_61\,
      dout_i(10) => \gdm.dm_gen.dm_n_62\,
      dout_i(9) => \gdm.dm_gen.dm_n_63\,
      dout_i(8) => \gdm.dm_gen.dm_n_64\,
      dout_i(7) => \gdm.dm_gen.dm_n_65\,
      dout_i(6) => \gdm.dm_gen.dm_n_66\,
      dout_i(5) => \gdm.dm_gen.dm_n_67\,
      dout_i(4) => \gdm.dm_gen.dm_n_68\,
      dout_i(3) => \gdm.dm_gen.dm_n_69\,
      dout_i(2) => \gdm.dm_gen.dm_n_70\,
      dout_i(1) => \gdm.dm_gen.dm_n_71\,
      dout_i(0) => \gdm.dm_gen.dm_n_72\,
      \gpr1.dout_i_reg[1]_0\(3 downto 0) => \gpr1.dout_i_reg[1]\(3 downto 0),
      \gpr1.dout_i_reg[72]_0\(0) => \gpr1.dout_i_reg[72]\(0),
      m_aclk => m_aclk,
      s_aclk => s_aclk
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_72\,
      Q => \goreg_dm.dout_i_reg[72]_0\(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_62\,
      Q => \goreg_dm.dout_i_reg[72]_0\(10),
      R => '0'
    );
\goreg_dm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_61\,
      Q => \goreg_dm.dout_i_reg[72]_0\(11),
      R => '0'
    );
\goreg_dm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_60\,
      Q => \goreg_dm.dout_i_reg[72]_0\(12),
      R => '0'
    );
\goreg_dm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_59\,
      Q => \goreg_dm.dout_i_reg[72]_0\(13),
      R => '0'
    );
\goreg_dm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_58\,
      Q => \goreg_dm.dout_i_reg[72]_0\(14),
      R => '0'
    );
\goreg_dm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_57\,
      Q => \goreg_dm.dout_i_reg[72]_0\(15),
      R => '0'
    );
\goreg_dm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_56\,
      Q => \goreg_dm.dout_i_reg[72]_0\(16),
      R => '0'
    );
\goreg_dm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_55\,
      Q => \goreg_dm.dout_i_reg[72]_0\(17),
      R => '0'
    );
\goreg_dm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_54\,
      Q => \goreg_dm.dout_i_reg[72]_0\(18),
      R => '0'
    );
\goreg_dm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_53\,
      Q => \goreg_dm.dout_i_reg[72]_0\(19),
      R => '0'
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_71\,
      Q => \goreg_dm.dout_i_reg[72]_0\(1),
      R => '0'
    );
\goreg_dm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_52\,
      Q => \goreg_dm.dout_i_reg[72]_0\(20),
      R => '0'
    );
\goreg_dm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_51\,
      Q => \goreg_dm.dout_i_reg[72]_0\(21),
      R => '0'
    );
\goreg_dm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_50\,
      Q => \goreg_dm.dout_i_reg[72]_0\(22),
      R => '0'
    );
\goreg_dm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_49\,
      Q => \goreg_dm.dout_i_reg[72]_0\(23),
      R => '0'
    );
\goreg_dm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_48\,
      Q => \goreg_dm.dout_i_reg[72]_0\(24),
      R => '0'
    );
\goreg_dm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_47\,
      Q => \goreg_dm.dout_i_reg[72]_0\(25),
      R => '0'
    );
\goreg_dm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_46\,
      Q => \goreg_dm.dout_i_reg[72]_0\(26),
      R => '0'
    );
\goreg_dm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_45\,
      Q => \goreg_dm.dout_i_reg[72]_0\(27),
      R => '0'
    );
\goreg_dm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_44\,
      Q => \goreg_dm.dout_i_reg[72]_0\(28),
      R => '0'
    );
\goreg_dm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_43\,
      Q => \goreg_dm.dout_i_reg[72]_0\(29),
      R => '0'
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_70\,
      Q => \goreg_dm.dout_i_reg[72]_0\(2),
      R => '0'
    );
\goreg_dm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_42\,
      Q => \goreg_dm.dout_i_reg[72]_0\(30),
      R => '0'
    );
\goreg_dm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_41\,
      Q => \goreg_dm.dout_i_reg[72]_0\(31),
      R => '0'
    );
\goreg_dm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_40\,
      Q => \goreg_dm.dout_i_reg[72]_0\(32),
      R => '0'
    );
\goreg_dm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_39\,
      Q => \goreg_dm.dout_i_reg[72]_0\(33),
      R => '0'
    );
\goreg_dm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_38\,
      Q => \goreg_dm.dout_i_reg[72]_0\(34),
      R => '0'
    );
\goreg_dm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_37\,
      Q => \goreg_dm.dout_i_reg[72]_0\(35),
      R => '0'
    );
\goreg_dm.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_36\,
      Q => \goreg_dm.dout_i_reg[72]_0\(36),
      R => '0'
    );
\goreg_dm.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_35\,
      Q => \goreg_dm.dout_i_reg[72]_0\(37),
      R => '0'
    );
\goreg_dm.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_34\,
      Q => \goreg_dm.dout_i_reg[72]_0\(38),
      R => '0'
    );
\goreg_dm.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_33\,
      Q => \goreg_dm.dout_i_reg[72]_0\(39),
      R => '0'
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_69\,
      Q => \goreg_dm.dout_i_reg[72]_0\(3),
      R => '0'
    );
\goreg_dm.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_32\,
      Q => \goreg_dm.dout_i_reg[72]_0\(40),
      R => '0'
    );
\goreg_dm.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_31\,
      Q => \goreg_dm.dout_i_reg[72]_0\(41),
      R => '0'
    );
\goreg_dm.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_30\,
      Q => \goreg_dm.dout_i_reg[72]_0\(42),
      R => '0'
    );
\goreg_dm.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_29\,
      Q => \goreg_dm.dout_i_reg[72]_0\(43),
      R => '0'
    );
\goreg_dm.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_28\,
      Q => \goreg_dm.dout_i_reg[72]_0\(44),
      R => '0'
    );
\goreg_dm.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_27\,
      Q => \goreg_dm.dout_i_reg[72]_0\(45),
      R => '0'
    );
\goreg_dm.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_26\,
      Q => \goreg_dm.dout_i_reg[72]_0\(46),
      R => '0'
    );
\goreg_dm.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_25\,
      Q => \goreg_dm.dout_i_reg[72]_0\(47),
      R => '0'
    );
\goreg_dm.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_24\,
      Q => \goreg_dm.dout_i_reg[72]_0\(48),
      R => '0'
    );
\goreg_dm.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_23\,
      Q => \goreg_dm.dout_i_reg[72]_0\(49),
      R => '0'
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_68\,
      Q => \goreg_dm.dout_i_reg[72]_0\(4),
      R => '0'
    );
\goreg_dm.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_22\,
      Q => \goreg_dm.dout_i_reg[72]_0\(50),
      R => '0'
    );
\goreg_dm.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_21\,
      Q => \goreg_dm.dout_i_reg[72]_0\(51),
      R => '0'
    );
\goreg_dm.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_20\,
      Q => \goreg_dm.dout_i_reg[72]_0\(52),
      R => '0'
    );
\goreg_dm.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_19\,
      Q => \goreg_dm.dout_i_reg[72]_0\(53),
      R => '0'
    );
\goreg_dm.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_18\,
      Q => \goreg_dm.dout_i_reg[72]_0\(54),
      R => '0'
    );
\goreg_dm.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_17\,
      Q => \goreg_dm.dout_i_reg[72]_0\(55),
      R => '0'
    );
\goreg_dm.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_16\,
      Q => \goreg_dm.dout_i_reg[72]_0\(56),
      R => '0'
    );
\goreg_dm.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_15\,
      Q => \goreg_dm.dout_i_reg[72]_0\(57),
      R => '0'
    );
\goreg_dm.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_14\,
      Q => \goreg_dm.dout_i_reg[72]_0\(58),
      R => '0'
    );
\goreg_dm.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_13\,
      Q => \goreg_dm.dout_i_reg[72]_0\(59),
      R => '0'
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_67\,
      Q => \goreg_dm.dout_i_reg[72]_0\(5),
      R => '0'
    );
\goreg_dm.dout_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_12\,
      Q => \goreg_dm.dout_i_reg[72]_0\(60),
      R => '0'
    );
\goreg_dm.dout_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_11\,
      Q => \goreg_dm.dout_i_reg[72]_0\(61),
      R => '0'
    );
\goreg_dm.dout_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_10\,
      Q => \goreg_dm.dout_i_reg[72]_0\(62),
      R => '0'
    );
\goreg_dm.dout_i_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_9\,
      Q => \goreg_dm.dout_i_reg[72]_0\(63),
      R => '0'
    );
\goreg_dm.dout_i_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_8\,
      Q => \goreg_dm.dout_i_reg[72]_0\(64),
      R => '0'
    );
\goreg_dm.dout_i_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_7\,
      Q => \goreg_dm.dout_i_reg[72]_0\(65),
      R => '0'
    );
\goreg_dm.dout_i_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_6\,
      Q => \goreg_dm.dout_i_reg[72]_0\(66),
      R => '0'
    );
\goreg_dm.dout_i_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_5\,
      Q => \goreg_dm.dout_i_reg[72]_0\(67),
      R => '0'
    );
\goreg_dm.dout_i_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_4\,
      Q => \goreg_dm.dout_i_reg[72]_0\(68),
      R => '0'
    );
\goreg_dm.dout_i_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_3\,
      Q => \goreg_dm.dout_i_reg[72]_0\(69),
      R => '0'
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_66\,
      Q => \goreg_dm.dout_i_reg[72]_0\(6),
      R => '0'
    );
\goreg_dm.dout_i_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_2\,
      Q => \goreg_dm.dout_i_reg[72]_0\(70),
      R => '0'
    );
\goreg_dm.dout_i_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_1\,
      Q => \goreg_dm.dout_i_reg[72]_0\(71),
      R => '0'
    );
\goreg_dm.dout_i_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_0\,
      Q => \goreg_dm.dout_i_reg[72]_0\(72),
      R => '0'
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_65\,
      Q => \goreg_dm.dout_i_reg[72]_0\(7),
      R => '0'
    );
\goreg_dm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_64\,
      Q => \goreg_dm.dout_i_reg[72]_0\(8),
      R => '0'
    );
\goreg_dm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_63\,
      Q => \goreg_dm.dout_i_reg[72]_0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_memory__parameterized1\ is
  port (
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \goreg_dm.dout_i_reg[2]_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    p_20_out : in STD_LOGIC;
    I471 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I80 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I81 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_memory__parameterized1\ : entity is "memory";
end \base_auto_cc_1_memory__parameterized1\;

architecture STRUCTURE of \base_auto_cc_1_memory__parameterized1\ is
  signal \gdm.dm_gen.dm_n_0\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_1\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_2\ : STD_LOGIC;
  signal \goreg_dm.dout_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \goreg_dm.dout_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \goreg_dm.dout_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_bid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  s_axi_bid(0) <= \^s_axi_bid\(0);
  s_axi_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
\gdm.dm_gen.dm\: entity work.\base_auto_cc_1_dmem__parameterized1\
     port map (
      E(0) => E(0),
      I471(2 downto 0) => I471(2 downto 0),
      I80(3 downto 0) => I80(3 downto 0),
      I81(3 downto 0) => I81(3 downto 0),
      dout_i(2) => \gdm.dm_gen.dm_n_0\,
      dout_i(1) => \gdm.dm_gen.dm_n_1\,
      dout_i(0) => \gdm.dm_gen.dm_n_2\,
      m_aclk => m_aclk,
      p_20_out => p_20_out,
      s_aclk => s_aclk
    );
\goreg_dm.dout_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFFFEF20200020"
    )
        port map (
      I0 => \gdm.dm_gen.dm_n_2\,
      I1 => \goreg_dm.dout_i_reg[2]_0\,
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => s_axi_bready,
      I5 => \^s_axi_bresp\(0),
      O => \goreg_dm.dout_i[0]_i_1_n_0\
    );
\goreg_dm.dout_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFFFEF20200020"
    )
        port map (
      I0 => \gdm.dm_gen.dm_n_1\,
      I1 => \goreg_dm.dout_i_reg[2]_0\,
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => s_axi_bready,
      I5 => \^s_axi_bresp\(1),
      O => \goreg_dm.dout_i[1]_i_1_n_0\
    );
\goreg_dm.dout_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFFFEF20200020"
    )
        port map (
      I0 => \gdm.dm_gen.dm_n_0\,
      I1 => \goreg_dm.dout_i_reg[2]_0\,
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => s_axi_bready,
      I5 => \^s_axi_bid\(0),
      O => \goreg_dm.dout_i[2]_i_1_n_0\
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \goreg_dm.dout_i[0]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \goreg_dm.dout_i[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(1),
      R => '0'
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \goreg_dm.dout_i[2]_i_1_n_0\,
      Q => \^s_axi_bid\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_memory__parameterized2\ is
  port (
    \goreg_dm.dout_i_reg[67]_0\ : out STD_LOGIC_VECTOR ( 67 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    I71 : in STD_LOGIC;
    I477 : in STD_LOGIC_VECTOR ( 67 downto 0 );
    count_d1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[1]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[67]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_memory__parameterized2\ : entity is "memory";
end \base_auto_cc_1_memory__parameterized2\;

architecture STRUCTURE of \base_auto_cc_1_memory__parameterized2\ is
  signal \gdm.dm_gen.dm_n_0\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_1\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_10\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_11\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_12\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_13\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_14\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_15\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_16\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_17\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_18\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_19\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_2\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_20\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_21\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_22\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_23\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_24\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_25\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_26\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_27\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_28\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_29\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_3\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_30\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_31\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_32\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_33\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_34\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_35\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_36\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_37\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_38\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_39\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_4\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_40\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_41\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_42\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_43\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_44\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_45\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_46\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_47\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_48\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_49\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_5\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_50\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_51\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_52\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_53\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_54\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_55\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_56\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_57\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_58\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_59\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_6\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_60\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_61\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_62\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_63\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_64\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_65\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_66\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_67\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_7\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_8\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_9\ : STD_LOGIC;
begin
\gdm.dm_gen.dm\: entity work.\base_auto_cc_1_dmem__parameterized2\
     port map (
      I477(67 downto 0) => I477(67 downto 0),
      I71 => I71,
      count_d1(3 downto 0) => count_d1(3 downto 0),
      dout_i(67) => \gdm.dm_gen.dm_n_0\,
      dout_i(66) => \gdm.dm_gen.dm_n_1\,
      dout_i(65) => \gdm.dm_gen.dm_n_2\,
      dout_i(64) => \gdm.dm_gen.dm_n_3\,
      dout_i(63) => \gdm.dm_gen.dm_n_4\,
      dout_i(62) => \gdm.dm_gen.dm_n_5\,
      dout_i(61) => \gdm.dm_gen.dm_n_6\,
      dout_i(60) => \gdm.dm_gen.dm_n_7\,
      dout_i(59) => \gdm.dm_gen.dm_n_8\,
      dout_i(58) => \gdm.dm_gen.dm_n_9\,
      dout_i(57) => \gdm.dm_gen.dm_n_10\,
      dout_i(56) => \gdm.dm_gen.dm_n_11\,
      dout_i(55) => \gdm.dm_gen.dm_n_12\,
      dout_i(54) => \gdm.dm_gen.dm_n_13\,
      dout_i(53) => \gdm.dm_gen.dm_n_14\,
      dout_i(52) => \gdm.dm_gen.dm_n_15\,
      dout_i(51) => \gdm.dm_gen.dm_n_16\,
      dout_i(50) => \gdm.dm_gen.dm_n_17\,
      dout_i(49) => \gdm.dm_gen.dm_n_18\,
      dout_i(48) => \gdm.dm_gen.dm_n_19\,
      dout_i(47) => \gdm.dm_gen.dm_n_20\,
      dout_i(46) => \gdm.dm_gen.dm_n_21\,
      dout_i(45) => \gdm.dm_gen.dm_n_22\,
      dout_i(44) => \gdm.dm_gen.dm_n_23\,
      dout_i(43) => \gdm.dm_gen.dm_n_24\,
      dout_i(42) => \gdm.dm_gen.dm_n_25\,
      dout_i(41) => \gdm.dm_gen.dm_n_26\,
      dout_i(40) => \gdm.dm_gen.dm_n_27\,
      dout_i(39) => \gdm.dm_gen.dm_n_28\,
      dout_i(38) => \gdm.dm_gen.dm_n_29\,
      dout_i(37) => \gdm.dm_gen.dm_n_30\,
      dout_i(36) => \gdm.dm_gen.dm_n_31\,
      dout_i(35) => \gdm.dm_gen.dm_n_32\,
      dout_i(34) => \gdm.dm_gen.dm_n_33\,
      dout_i(33) => \gdm.dm_gen.dm_n_34\,
      dout_i(32) => \gdm.dm_gen.dm_n_35\,
      dout_i(31) => \gdm.dm_gen.dm_n_36\,
      dout_i(30) => \gdm.dm_gen.dm_n_37\,
      dout_i(29) => \gdm.dm_gen.dm_n_38\,
      dout_i(28) => \gdm.dm_gen.dm_n_39\,
      dout_i(27) => \gdm.dm_gen.dm_n_40\,
      dout_i(26) => \gdm.dm_gen.dm_n_41\,
      dout_i(25) => \gdm.dm_gen.dm_n_42\,
      dout_i(24) => \gdm.dm_gen.dm_n_43\,
      dout_i(23) => \gdm.dm_gen.dm_n_44\,
      dout_i(22) => \gdm.dm_gen.dm_n_45\,
      dout_i(21) => \gdm.dm_gen.dm_n_46\,
      dout_i(20) => \gdm.dm_gen.dm_n_47\,
      dout_i(19) => \gdm.dm_gen.dm_n_48\,
      dout_i(18) => \gdm.dm_gen.dm_n_49\,
      dout_i(17) => \gdm.dm_gen.dm_n_50\,
      dout_i(16) => \gdm.dm_gen.dm_n_51\,
      dout_i(15) => \gdm.dm_gen.dm_n_52\,
      dout_i(14) => \gdm.dm_gen.dm_n_53\,
      dout_i(13) => \gdm.dm_gen.dm_n_54\,
      dout_i(12) => \gdm.dm_gen.dm_n_55\,
      dout_i(11) => \gdm.dm_gen.dm_n_56\,
      dout_i(10) => \gdm.dm_gen.dm_n_57\,
      dout_i(9) => \gdm.dm_gen.dm_n_58\,
      dout_i(8) => \gdm.dm_gen.dm_n_59\,
      dout_i(7) => \gdm.dm_gen.dm_n_60\,
      dout_i(6) => \gdm.dm_gen.dm_n_61\,
      dout_i(5) => \gdm.dm_gen.dm_n_62\,
      dout_i(4) => \gdm.dm_gen.dm_n_63\,
      dout_i(3) => \gdm.dm_gen.dm_n_64\,
      dout_i(2) => \gdm.dm_gen.dm_n_65\,
      dout_i(1) => \gdm.dm_gen.dm_n_66\,
      dout_i(0) => \gdm.dm_gen.dm_n_67\,
      \gpr1.dout_i_reg[1]_0\(3 downto 0) => \gpr1.dout_i_reg[1]\(3 downto 0),
      \gpr1.dout_i_reg[67]_0\(0) => \gpr1.dout_i_reg[67]\(0),
      m_aclk => m_aclk,
      s_aclk => s_aclk
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_67\,
      Q => \goreg_dm.dout_i_reg[67]_0\(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_57\,
      Q => \goreg_dm.dout_i_reg[67]_0\(10),
      R => '0'
    );
\goreg_dm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_56\,
      Q => \goreg_dm.dout_i_reg[67]_0\(11),
      R => '0'
    );
\goreg_dm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_55\,
      Q => \goreg_dm.dout_i_reg[67]_0\(12),
      R => '0'
    );
\goreg_dm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_54\,
      Q => \goreg_dm.dout_i_reg[67]_0\(13),
      R => '0'
    );
\goreg_dm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_53\,
      Q => \goreg_dm.dout_i_reg[67]_0\(14),
      R => '0'
    );
\goreg_dm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_52\,
      Q => \goreg_dm.dout_i_reg[67]_0\(15),
      R => '0'
    );
\goreg_dm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_51\,
      Q => \goreg_dm.dout_i_reg[67]_0\(16),
      R => '0'
    );
\goreg_dm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_50\,
      Q => \goreg_dm.dout_i_reg[67]_0\(17),
      R => '0'
    );
\goreg_dm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_49\,
      Q => \goreg_dm.dout_i_reg[67]_0\(18),
      R => '0'
    );
\goreg_dm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_48\,
      Q => \goreg_dm.dout_i_reg[67]_0\(19),
      R => '0'
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_66\,
      Q => \goreg_dm.dout_i_reg[67]_0\(1),
      R => '0'
    );
\goreg_dm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_47\,
      Q => \goreg_dm.dout_i_reg[67]_0\(20),
      R => '0'
    );
\goreg_dm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_46\,
      Q => \goreg_dm.dout_i_reg[67]_0\(21),
      R => '0'
    );
\goreg_dm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_45\,
      Q => \goreg_dm.dout_i_reg[67]_0\(22),
      R => '0'
    );
\goreg_dm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_44\,
      Q => \goreg_dm.dout_i_reg[67]_0\(23),
      R => '0'
    );
\goreg_dm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_43\,
      Q => \goreg_dm.dout_i_reg[67]_0\(24),
      R => '0'
    );
\goreg_dm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_42\,
      Q => \goreg_dm.dout_i_reg[67]_0\(25),
      R => '0'
    );
\goreg_dm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_41\,
      Q => \goreg_dm.dout_i_reg[67]_0\(26),
      R => '0'
    );
\goreg_dm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_40\,
      Q => \goreg_dm.dout_i_reg[67]_0\(27),
      R => '0'
    );
\goreg_dm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_39\,
      Q => \goreg_dm.dout_i_reg[67]_0\(28),
      R => '0'
    );
\goreg_dm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_38\,
      Q => \goreg_dm.dout_i_reg[67]_0\(29),
      R => '0'
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_65\,
      Q => \goreg_dm.dout_i_reg[67]_0\(2),
      R => '0'
    );
\goreg_dm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_37\,
      Q => \goreg_dm.dout_i_reg[67]_0\(30),
      R => '0'
    );
\goreg_dm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_36\,
      Q => \goreg_dm.dout_i_reg[67]_0\(31),
      R => '0'
    );
\goreg_dm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_35\,
      Q => \goreg_dm.dout_i_reg[67]_0\(32),
      R => '0'
    );
\goreg_dm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_34\,
      Q => \goreg_dm.dout_i_reg[67]_0\(33),
      R => '0'
    );
\goreg_dm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_33\,
      Q => \goreg_dm.dout_i_reg[67]_0\(34),
      R => '0'
    );
\goreg_dm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_32\,
      Q => \goreg_dm.dout_i_reg[67]_0\(35),
      R => '0'
    );
\goreg_dm.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_31\,
      Q => \goreg_dm.dout_i_reg[67]_0\(36),
      R => '0'
    );
\goreg_dm.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_30\,
      Q => \goreg_dm.dout_i_reg[67]_0\(37),
      R => '0'
    );
\goreg_dm.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_29\,
      Q => \goreg_dm.dout_i_reg[67]_0\(38),
      R => '0'
    );
\goreg_dm.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_28\,
      Q => \goreg_dm.dout_i_reg[67]_0\(39),
      R => '0'
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_64\,
      Q => \goreg_dm.dout_i_reg[67]_0\(3),
      R => '0'
    );
\goreg_dm.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_27\,
      Q => \goreg_dm.dout_i_reg[67]_0\(40),
      R => '0'
    );
\goreg_dm.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_26\,
      Q => \goreg_dm.dout_i_reg[67]_0\(41),
      R => '0'
    );
\goreg_dm.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_25\,
      Q => \goreg_dm.dout_i_reg[67]_0\(42),
      R => '0'
    );
\goreg_dm.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_24\,
      Q => \goreg_dm.dout_i_reg[67]_0\(43),
      R => '0'
    );
\goreg_dm.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_23\,
      Q => \goreg_dm.dout_i_reg[67]_0\(44),
      R => '0'
    );
\goreg_dm.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_22\,
      Q => \goreg_dm.dout_i_reg[67]_0\(45),
      R => '0'
    );
\goreg_dm.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_21\,
      Q => \goreg_dm.dout_i_reg[67]_0\(46),
      R => '0'
    );
\goreg_dm.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_20\,
      Q => \goreg_dm.dout_i_reg[67]_0\(47),
      R => '0'
    );
\goreg_dm.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_19\,
      Q => \goreg_dm.dout_i_reg[67]_0\(48),
      R => '0'
    );
\goreg_dm.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_18\,
      Q => \goreg_dm.dout_i_reg[67]_0\(49),
      R => '0'
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_63\,
      Q => \goreg_dm.dout_i_reg[67]_0\(4),
      R => '0'
    );
\goreg_dm.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_17\,
      Q => \goreg_dm.dout_i_reg[67]_0\(50),
      R => '0'
    );
\goreg_dm.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_16\,
      Q => \goreg_dm.dout_i_reg[67]_0\(51),
      R => '0'
    );
\goreg_dm.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_15\,
      Q => \goreg_dm.dout_i_reg[67]_0\(52),
      R => '0'
    );
\goreg_dm.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_14\,
      Q => \goreg_dm.dout_i_reg[67]_0\(53),
      R => '0'
    );
\goreg_dm.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_13\,
      Q => \goreg_dm.dout_i_reg[67]_0\(54),
      R => '0'
    );
\goreg_dm.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_12\,
      Q => \goreg_dm.dout_i_reg[67]_0\(55),
      R => '0'
    );
\goreg_dm.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_11\,
      Q => \goreg_dm.dout_i_reg[67]_0\(56),
      R => '0'
    );
\goreg_dm.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_10\,
      Q => \goreg_dm.dout_i_reg[67]_0\(57),
      R => '0'
    );
\goreg_dm.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_9\,
      Q => \goreg_dm.dout_i_reg[67]_0\(58),
      R => '0'
    );
\goreg_dm.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_8\,
      Q => \goreg_dm.dout_i_reg[67]_0\(59),
      R => '0'
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_62\,
      Q => \goreg_dm.dout_i_reg[67]_0\(5),
      R => '0'
    );
\goreg_dm.dout_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_7\,
      Q => \goreg_dm.dout_i_reg[67]_0\(60),
      R => '0'
    );
\goreg_dm.dout_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_6\,
      Q => \goreg_dm.dout_i_reg[67]_0\(61),
      R => '0'
    );
\goreg_dm.dout_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_5\,
      Q => \goreg_dm.dout_i_reg[67]_0\(62),
      R => '0'
    );
\goreg_dm.dout_i_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_4\,
      Q => \goreg_dm.dout_i_reg[67]_0\(63),
      R => '0'
    );
\goreg_dm.dout_i_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_3\,
      Q => \goreg_dm.dout_i_reg[67]_0\(64),
      R => '0'
    );
\goreg_dm.dout_i_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_2\,
      Q => \goreg_dm.dout_i_reg[67]_0\(65),
      R => '0'
    );
\goreg_dm.dout_i_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_1\,
      Q => \goreg_dm.dout_i_reg[67]_0\(66),
      R => '0'
    );
\goreg_dm.dout_i_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_0\,
      Q => \goreg_dm.dout_i_reg[67]_0\(67),
      R => '0'
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_61\,
      Q => \goreg_dm.dout_i_reg[67]_0\(6),
      R => '0'
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_60\,
      Q => \goreg_dm.dout_i_reg[67]_0\(7),
      R => '0'
    );
\goreg_dm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_59\,
      Q => \goreg_dm.dout_i_reg[67]_0\(8),
      R => '0'
    );
\goreg_dm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_58\,
      Q => \goreg_dm.dout_i_reg[67]_0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_logic is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \gc0.count_d1_reg[3]_0\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    ram_empty_i_reg : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end base_auto_cc_1_rd_logic;

architecture STRUCTURE of base_auto_cc_1_rd_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gr1.gr1_int.rfwft_n_2\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal rpntr_n_0 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gr1.gr1_int.rfwft\: entity work.base_auto_cc_1_rd_fwft
     port map (
      E(0) => \^e\(0),
      Q(0) => rd_pntr_plus1(3),
      WR_PNTR_RD(0) => WR_PNTR_RD(3),
      \gpregsm1.curr_fwft_state_reg[1]_0\ => \gr1.gr1_int.rfwft_n_2\,
      \gpregsm1.curr_fwft_state_reg[1]_1\ => p_2_out,
      \gpregsm1.user_valid_reg_0\ => \gc0.count_d1_reg[3]_0\,
      \out\(1 downto 0) => \out\(1 downto 0),
      s_aclk => s_aclk,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid
    );
\gras.rsts\: entity work.base_auto_cc_1_rd_status_flags_as
     port map (
      \out\ => p_2_out,
      ram_empty_i_reg_0 => rpntr_n_0,
      ram_empty_i_reg_1 => \gc0.count_d1_reg[3]_0\,
      s_aclk => s_aclk
    );
rpntr: entity work.base_auto_cc_1_rd_bin_cntr
     port map (
      E(0) => \^e\(0),
      Q(3) => rd_pntr_plus1(3),
      Q(2 downto 0) => Q(2 downto 0),
      WR_PNTR_RD(3 downto 0) => WR_PNTR_RD(3 downto 0),
      \gc0.count_d1_reg[2]_0\ => rpntr_n_0,
      \gc0.count_d1_reg[3]_0\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \gc0.count_d1_reg[3]_1\ => \gc0.count_d1_reg[3]_0\,
      ram_empty_i_reg => ram_empty_i_reg,
      ram_empty_i_reg_0 => \gr1.gr1_int.rfwft_n_2\,
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_logic_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \gc0.count_d1_reg[3]_0\ : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    ram_empty_i_reg : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_rd_logic_0 : entity is "rd_logic";
end base_auto_cc_1_rd_logic_0;

architecture STRUCTURE of base_auto_cc_1_rd_logic_0 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gr1.gr1_int.rfwft_n_0\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal rpntr_n_0 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gr1.gr1_int.rfwft\: entity work.base_auto_cc_1_rd_fwft_4
     port map (
      E(0) => \^e\(0),
      Q(0) => rd_pntr_plus1(3),
      WR_PNTR_RD(0) => WR_PNTR_RD(3),
      \gpregsm1.curr_fwft_state_reg[1]_0\ => \gr1.gr1_int.rfwft_n_0\,
      \gpregsm1.user_valid_reg_0\ => \gc0.count_d1_reg[3]_0\,
      m_aclk => m_aclk,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0) => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      \out\ => p_2_out
    );
\gras.rsts\: entity work.base_auto_cc_1_rd_status_flags_as_5
     port map (
      m_aclk => m_aclk,
      \out\ => p_2_out,
      ram_empty_i_reg_0 => rpntr_n_0,
      ram_empty_i_reg_1 => \gc0.count_d1_reg[3]_0\
    );
rpntr: entity work.base_auto_cc_1_rd_bin_cntr_6
     port map (
      E(0) => \^e\(0),
      Q(3) => rd_pntr_plus1(3),
      Q(2 downto 0) => Q(2 downto 0),
      WR_PNTR_RD(3 downto 0) => WR_PNTR_RD(3 downto 0),
      \gc0.count_d1_reg[2]_0\ => rpntr_n_0,
      \gc0.count_d1_reg[3]_0\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \gc0.count_d1_reg[3]_1\ => \gc0.count_d1_reg[3]_0\,
      m_aclk => m_aclk,
      ram_empty_i_reg => ram_empty_i_reg,
      ram_empty_i_reg_0 => \gr1.gr1_int.rfwft_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_logic_14 is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \gc0.count_d1_reg[3]_0\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ram_empty_i_reg : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_rd_logic_14 : entity is "rd_logic";
end base_auto_cc_1_rd_logic_14;

architecture STRUCTURE of base_auto_cc_1_rd_logic_14 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gr1.gr1_int.rfwft_n_0\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal rpntr_n_0 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gr1.gr1_int.rfwft\: entity work.base_auto_cc_1_rd_fwft_18
     port map (
      E(0) => \^e\(0),
      Q(0) => rd_pntr_plus1(3),
      WR_PNTR_RD(0) => WR_PNTR_RD(3),
      \gpregsm1.curr_fwft_state_reg[1]_0\ => \gr1.gr1_int.rfwft_n_0\,
      \gpregsm1.user_valid_reg_0\ => \gc0.count_d1_reg[3]_0\,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0) => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      \out\ => p_2_out,
      s_aclk => s_aclk,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid
    );
\gras.rsts\: entity work.base_auto_cc_1_rd_status_flags_as_19
     port map (
      \out\ => p_2_out,
      ram_empty_i_reg_0 => rpntr_n_0,
      ram_empty_i_reg_1 => \gc0.count_d1_reg[3]_0\,
      s_aclk => s_aclk
    );
rpntr: entity work.base_auto_cc_1_rd_bin_cntr_20
     port map (
      E(0) => \^e\(0),
      Q(3) => rd_pntr_plus1(3),
      Q(2 downto 0) => Q(2 downto 0),
      WR_PNTR_RD(3 downto 0) => WR_PNTR_RD(3 downto 0),
      \gc0.count_d1_reg[2]_0\ => rpntr_n_0,
      \gc0.count_d1_reg[3]_0\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \gc0.count_d1_reg[3]_1\ => \gc0.count_d1_reg[3]_0\,
      ram_empty_i_reg => ram_empty_i_reg,
      ram_empty_i_reg_0 => \gr1.gr1_int.rfwft_n_0\,
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_logic_21 is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \gc0.count_d1_reg[3]_0\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    ram_empty_i_reg : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_rd_logic_21 : entity is "rd_logic";
end base_auto_cc_1_rd_logic_21;

architecture STRUCTURE of base_auto_cc_1_rd_logic_21 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gr1.gr1_int.rfwft_n_0\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal rpntr_n_0 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gr1.gr1_int.rfwft\: entity work.base_auto_cc_1_rd_fwft_27
     port map (
      E(0) => \^e\(0),
      Q(0) => rd_pntr_plus1(3),
      WR_PNTR_RD(0) => WR_PNTR_RD(3),
      \gpregsm1.curr_fwft_state_reg[1]_0\ => \gr1.gr1_int.rfwft_n_0\,
      \gpregsm1.user_valid_reg_0\ => \gc0.count_d1_reg[3]_0\,
      m_aclk => m_aclk,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0) => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      \out\ => p_2_out
    );
\gras.rsts\: entity work.base_auto_cc_1_rd_status_flags_as_28
     port map (
      m_aclk => m_aclk,
      \out\ => p_2_out,
      ram_empty_i_reg_0 => rpntr_n_0,
      ram_empty_i_reg_1 => \gc0.count_d1_reg[3]_0\
    );
rpntr: entity work.base_auto_cc_1_rd_bin_cntr_29
     port map (
      E(0) => \^e\(0),
      Q(3) => rd_pntr_plus1(3),
      Q(2 downto 0) => Q(2 downto 0),
      WR_PNTR_RD(3 downto 0) => WR_PNTR_RD(3 downto 0),
      \gc0.count_d1_reg[2]_0\ => rpntr_n_0,
      \gc0.count_d1_reg[3]_0\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \gc0.count_d1_reg[3]_1\ => \gc0.count_d1_reg[3]_0\,
      m_aclk => m_aclk,
      ram_empty_i_reg => ram_empty_i_reg,
      ram_empty_i_reg_0 => \gr1.gr1_int.rfwft_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_rd_logic_7 is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \gc0.count_d1_reg[3]_0\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    ram_empty_i_reg : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_rd_logic_7 : entity is "rd_logic";
end base_auto_cc_1_rd_logic_7;

architecture STRUCTURE of base_auto_cc_1_rd_logic_7 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gr1.gr1_int.rfwft_n_0\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal rpntr_n_0 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gr1.gr1_int.rfwft\: entity work.base_auto_cc_1_rd_fwft_11
     port map (
      E(0) => \^e\(0),
      Q(0) => rd_pntr_plus1(3),
      WR_PNTR_RD(0) => WR_PNTR_RD(3),
      \gpregsm1.curr_fwft_state_reg[1]_0\ => \gr1.gr1_int.rfwft_n_0\,
      \gpregsm1.user_valid_reg_0\ => \gc0.count_d1_reg[3]_0\,
      m_aclk => m_aclk,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0) => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      \out\ => p_2_out
    );
\gras.rsts\: entity work.base_auto_cc_1_rd_status_flags_as_12
     port map (
      m_aclk => m_aclk,
      \out\ => p_2_out,
      ram_empty_i_reg_0 => rpntr_n_0,
      ram_empty_i_reg_1 => \gc0.count_d1_reg[3]_0\
    );
rpntr: entity work.base_auto_cc_1_rd_bin_cntr_13
     port map (
      E(0) => \^e\(0),
      Q(3) => rd_pntr_plus1(3),
      Q(2 downto 0) => Q(2 downto 0),
      WR_PNTR_RD(3 downto 0) => WR_PNTR_RD(3 downto 0),
      \gc0.count_d1_reg[2]_0\ => rpntr_n_0,
      \gc0.count_d1_reg[3]_0\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \gc0.count_d1_reg[3]_1\ => \gc0.count_d1_reg[3]_0\,
      m_aclk => m_aclk,
      ram_empty_i_reg => ram_empty_i_reg,
      ram_empty_i_reg_0 => \gr1.gr1_int.rfwft_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_reset_blk_ramfifo is
  port (
    src_arst : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC
  );
end base_auto_cc_1_reset_blk_ramfifo;

architecture STRUCTURE of base_auto_cc_1_reset_blk_ramfifo is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dest_out : STD_LOGIC;
  signal \grstd1.grst_full.grst_f.rst_d3_i_1__3_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__3_n_0\ : STD_LOGIC;
  signal \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__3_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__3_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\ : STD_LOGIC;
  signal rd_rst_wr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal sckt_rd_rst_wr : STD_LOGIC;
  signal \^src_arst\ : STD_LOGIC;
  signal wr_rst_busy_rdch : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 5;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 5;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "TRUE";
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
  AR(0) <= \^ar\(0);
  \grstd1.grst_full.grst_f.rst_d3_reg_0\ <= rst_d3;
  \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ <= \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\;
  \out\ <= rst_d2;
  src_arst <= \^src_arst\;
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => wr_rst_busy_rdch,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_d2,
      I1 => \^ar\(0),
      O => \grstd1.grst_full.grst_f.rst_d3_i_1__3_n_0\
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_i_1__3_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => sckt_rd_rst_wr,
      Q => rd_rst_wr_ext(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(0),
      Q => rd_rst_wr_ext(1)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(1),
      Q => rd_rst_wr_ext(2)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(2),
      Q => rd_rst_wr_ext(3)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\: entity work.base_auto_cc_1_xpm_cdc_async_rst
     port map (
      dest_arst => rst_rd_reg2,
      dest_clk => s_aclk,
      src_arst => \^src_arst\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\,
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__3_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__3_n_0\,
      PRE => rst_rd_reg2,
      Q => \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^ar\(0),
      I1 => rd_rst_wr_ext(0),
      I2 => rd_rst_wr_ext(1),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__3_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__3_n_0\,
      PRE => rst_wr_reg2,
      Q => \^ar\(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA08AA"
    )
        port map (
      I0 => wr_rst_busy_rdch,
      I1 => rd_rst_wr_ext(1),
      I2 => rd_rst_wr_ext(0),
      I3 => rd_rst_wr_ext(3),
      I4 => rd_rst_wr_ext(2),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__3_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__3_n_0\,
      PRE => rst_wr_reg2,
      Q => wr_rst_busy_rdch
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_rd_reg2,
      D => dest_out,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_rd_reg2,
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\: entity work.\base_auto_cc_1_xpm_cdc_single__parameterized1\
     port map (
      dest_clk => m_aclk,
      dest_out => sckt_rd_rst_wr,
      src_clk => s_aclk,
      src_in => \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\: entity work.\base_auto_cc_1_xpm_cdc_single__parameterized1__18\
     port map (
      dest_clk => s_aclk,
      dest_out => dest_out,
      src_clk => m_aclk,
      src_in => \^ar\(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.\base_auto_cc_1_xpm_cdc_async_rst__13\
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => m_aclk,
      src_arst => \^src_arst\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_aresetn,
      O => \^src_arst\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_reset_blk_ramfifo__xdcDup__1\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : out STD_LOGIC;
    src_in : out STD_LOGIC;
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_reset_blk_ramfifo__xdcDup__1\ : entity is "reset_blk_ramfifo";
end \base_auto_cc_1_reset_blk_ramfifo__xdcDup__1\;

architecture STRUCTURE of \base_auto_cc_1_reset_blk_ramfifo__xdcDup__1\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dest_out : STD_LOGIC;
  signal \grstd1.grst_full.grst_f.rst_d3_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\ : STD_LOGIC;
  signal rd_rst_wr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal sckt_rd_rst_wr : STD_LOGIC;
  signal \^src_in\ : STD_LOGIC;
  signal wr_rst_rd_ext : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 5;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 5;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "TRUE";
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
  AR(0) <= \^ar\(0);
  \grstd1.grst_full.grst_f.rst_d3_reg_0\ <= rst_d3;
  \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ <= \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\;
  \out\ <= rst_d2;
  src_in <= \^src_in\;
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \^src_in\,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_d2,
      I1 => \^ar\(0),
      O => \grstd1.grst_full.grst_f.rst_d3_i_1_n_0\
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => sckt_rd_rst_wr,
      Q => rd_rst_wr_ext(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(0),
      Q => rd_rst_wr_ext(1)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(1),
      Q => rd_rst_wr_ext(2)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(2),
      Q => rd_rst_wr_ext(3)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\: entity work.\base_auto_cc_1_xpm_cdc_async_rst__6\
     port map (
      dest_arst => rst_rd_reg2,
      dest_clk => m_aclk,
      src_arst => src_arst
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\,
      I1 => wr_rst_rd_ext(1),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\,
      PRE => rst_rd_reg2,
      Q => \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^ar\(0),
      I1 => rd_rst_wr_ext(0),
      I2 => rd_rst_wr_ext(1),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => \^ar\(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA08AA"
    )
        port map (
      I0 => \^src_in\,
      I1 => rd_rst_wr_ext(1),
      I2 => rd_rst_wr_ext(0),
      I3 => rd_rst_wr_ext(3),
      I4 => rd_rst_wr_ext(2),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => \^src_in\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_rd_reg2,
      D => dest_out,
      Q => wr_rst_rd_ext(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_rd_reg2,
      D => wr_rst_rd_ext(0),
      Q => wr_rst_rd_ext(1)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\: entity work.\base_auto_cc_1_xpm_cdc_single__parameterized1__11\
     port map (
      dest_clk => s_aclk,
      dest_out => sckt_rd_rst_wr,
      src_clk => m_aclk,
      src_in => \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\: entity work.\base_auto_cc_1_xpm_cdc_single__parameterized1__10\
     port map (
      dest_clk => m_aclk,
      dest_out => dest_out,
      src_clk => s_aclk,
      src_in => \^ar\(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.\base_auto_cc_1_xpm_cdc_async_rst__5\
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => s_aclk,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_reset_blk_ramfifo__xdcDup__2\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : out STD_LOGIC;
    src_in : out STD_LOGIC;
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_reset_blk_ramfifo__xdcDup__2\ : entity is "reset_blk_ramfifo";
end \base_auto_cc_1_reset_blk_ramfifo__xdcDup__2\;

architecture STRUCTURE of \base_auto_cc_1_reset_blk_ramfifo__xdcDup__2\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dest_out : STD_LOGIC;
  signal \grstd1.grst_full.grst_f.rst_d3_i_1__0_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__0_n_0\ : STD_LOGIC;
  signal \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__0_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__0_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\ : STD_LOGIC;
  signal rd_rst_wr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal sckt_rd_rst_wr : STD_LOGIC;
  signal \^src_in\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 5;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 5;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "TRUE";
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
  AR(0) <= \^ar\(0);
  \grstd1.grst_full.grst_f.rst_d3_reg_0\ <= rst_d3;
  \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ <= \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\;
  \out\ <= rst_d2;
  src_in <= \^src_in\;
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \^src_in\,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_d2,
      I1 => \^ar\(0),
      O => \grstd1.grst_full.grst_f.rst_d3_i_1__0_n_0\
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_i_1__0_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => sckt_rd_rst_wr,
      Q => rd_rst_wr_ext(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(0),
      Q => rd_rst_wr_ext(1)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(1),
      Q => rd_rst_wr_ext(2)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(2),
      Q => rd_rst_wr_ext(3)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\: entity work.\base_auto_cc_1_xpm_cdc_async_rst__8\
     port map (
      dest_arst => rst_rd_reg2,
      dest_clk => m_aclk,
      src_arst => src_arst
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\,
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__0_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__0_n_0\,
      PRE => rst_rd_reg2,
      Q => \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^ar\(0),
      I1 => rd_rst_wr_ext(0),
      I2 => rd_rst_wr_ext(1),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__0_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__0_n_0\,
      PRE => rst_wr_reg2,
      Q => \^ar\(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA08AA"
    )
        port map (
      I0 => \^src_in\,
      I1 => rd_rst_wr_ext(1),
      I2 => rd_rst_wr_ext(0),
      I3 => rd_rst_wr_ext(3),
      I4 => rd_rst_wr_ext(2),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__0_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__0_n_0\,
      PRE => rst_wr_reg2,
      Q => \^src_in\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_rd_reg2,
      D => dest_out,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_rd_reg2,
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\: entity work.\base_auto_cc_1_xpm_cdc_single__parameterized1__13\
     port map (
      dest_clk => s_aclk,
      dest_out => sckt_rd_rst_wr,
      src_clk => m_aclk,
      src_in => \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\: entity work.\base_auto_cc_1_xpm_cdc_single__parameterized1__12\
     port map (
      dest_clk => m_aclk,
      dest_out => dest_out,
      src_clk => s_aclk,
      src_in => \^ar\(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.\base_auto_cc_1_xpm_cdc_async_rst__7\
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => s_aclk,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_reset_blk_ramfifo__xdcDup__3\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : out STD_LOGIC;
    src_arst : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_reset_blk_ramfifo__xdcDup__3\ : entity is "reset_blk_ramfifo";
end \base_auto_cc_1_reset_blk_ramfifo__xdcDup__3\;

architecture STRUCTURE of \base_auto_cc_1_reset_blk_ramfifo__xdcDup__3\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dest_out : STD_LOGIC;
  signal \grstd1.grst_full.grst_f.rst_d3_i_1__2_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__1_n_0\ : STD_LOGIC;
  signal \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\ : STD_LOGIC;
  signal rd_rst_wr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal sckt_rd_rst_wr : STD_LOGIC;
  signal wr_rst_busy_wrch : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 5;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 5;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "TRUE";
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
  AR(0) <= \^ar\(0);
  \grstd1.grst_full.grst_f.rst_d3_reg_0\ <= rst_d3;
  \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ <= \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\;
  \out\ <= rst_d2;
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => wr_rst_busy_wrch,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_d2,
      I1 => \^ar\(0),
      O => \grstd1.grst_full.grst_f.rst_d3_i_1__2_n_0\
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_i_1__2_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => sckt_rd_rst_wr,
      Q => rd_rst_wr_ext(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(0),
      Q => rd_rst_wr_ext(1)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(1),
      Q => rd_rst_wr_ext(2)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(2),
      Q => rd_rst_wr_ext(3)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\: entity work.\base_auto_cc_1_xpm_cdc_async_rst__10\
     port map (
      dest_arst => rst_rd_reg2,
      dest_clk => s_aclk,
      src_arst => src_arst
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\,
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__1_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__1_n_0\,
      PRE => rst_rd_reg2,
      Q => \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^ar\(0),
      I1 => rd_rst_wr_ext(0),
      I2 => rd_rst_wr_ext(1),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__1_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__1_n_0\,
      PRE => rst_wr_reg2,
      Q => \^ar\(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA08AA"
    )
        port map (
      I0 => wr_rst_busy_wrch,
      I1 => rd_rst_wr_ext(1),
      I2 => rd_rst_wr_ext(0),
      I3 => rd_rst_wr_ext(3),
      I4 => rd_rst_wr_ext(2),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__1_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__1_n_0\,
      PRE => rst_wr_reg2,
      Q => wr_rst_busy_wrch
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_rd_reg2,
      D => dest_out,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_rd_reg2,
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\: entity work.\base_auto_cc_1_xpm_cdc_single__parameterized1__15\
     port map (
      dest_clk => m_aclk,
      dest_out => sckt_rd_rst_wr,
      src_clk => s_aclk,
      src_in => \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\: entity work.\base_auto_cc_1_xpm_cdc_single__parameterized1__14\
     port map (
      dest_clk => s_aclk,
      dest_out => dest_out,
      src_clk => m_aclk,
      src_in => \^ar\(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.\base_auto_cc_1_xpm_cdc_async_rst__9\
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => m_aclk,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_reset_blk_ramfifo__xdcDup__4\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : out STD_LOGIC;
    src_in : out STD_LOGIC;
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_reset_blk_ramfifo__xdcDup__4\ : entity is "reset_blk_ramfifo";
end \base_auto_cc_1_reset_blk_ramfifo__xdcDup__4\;

architecture STRUCTURE of \base_auto_cc_1_reset_blk_ramfifo__xdcDup__4\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dest_out : STD_LOGIC;
  signal \grstd1.grst_full.grst_f.rst_d3_i_1__1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__2_n_0\ : STD_LOGIC;
  signal \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__2_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__2_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\ : STD_LOGIC;
  signal rd_rst_wr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal sckt_rd_rst_wr : STD_LOGIC;
  signal \^src_in\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 5;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 5;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "TRUE";
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
  AR(0) <= \^ar\(0);
  \grstd1.grst_full.grst_f.rst_d3_reg_0\ <= rst_d3;
  \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ <= \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\;
  \out\ <= rst_d2;
  src_in <= \^src_in\;
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \^src_in\,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_d2,
      I1 => \^ar\(0),
      O => \grstd1.grst_full.grst_f.rst_d3_i_1__1_n_0\
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_i_1__1_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => sckt_rd_rst_wr,
      Q => rd_rst_wr_ext(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(0),
      Q => rd_rst_wr_ext(1)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(1),
      Q => rd_rst_wr_ext(2)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(2),
      Q => rd_rst_wr_ext(3)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\: entity work.\base_auto_cc_1_xpm_cdc_async_rst__12\
     port map (
      dest_arst => rst_rd_reg2,
      dest_clk => m_aclk,
      src_arst => src_arst
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\,
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__2_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__2_n_0\,
      PRE => rst_rd_reg2,
      Q => \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^ar\(0),
      I1 => rd_rst_wr_ext(0),
      I2 => rd_rst_wr_ext(1),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__2_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__2_n_0\,
      PRE => rst_wr_reg2,
      Q => \^ar\(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA08AA"
    )
        port map (
      I0 => \^src_in\,
      I1 => rd_rst_wr_ext(1),
      I2 => rd_rst_wr_ext(0),
      I3 => rd_rst_wr_ext(3),
      I4 => rd_rst_wr_ext(2),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__2_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__2_n_0\,
      PRE => rst_wr_reg2,
      Q => \^src_in\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_rd_reg2,
      D => dest_out,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_rd_reg2,
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\: entity work.\base_auto_cc_1_xpm_cdc_single__parameterized1__17\
     port map (
      dest_clk => s_aclk,
      dest_out => sckt_rd_rst_wr,
      src_clk => m_aclk,
      src_in => \^ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\: entity work.\base_auto_cc_1_xpm_cdc_single__parameterized1__16\
     port map (
      dest_clk => m_aclk,
      dest_out => dest_out,
      src_clk => s_aclk,
      src_in => \^ar\(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.\base_auto_cc_1_xpm_cdc_async_rst__11\
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => s_aclk,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_wr_logic is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg_0 : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end base_auto_cc_1_wr_logic;

architecture STRUCTURE of base_auto_cc_1_wr_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gwas.wsts_n_0\ : STD_LOGIC;
  signal wpntr_n_0 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  E(0) <= \^e\(0);
\gwas.wsts\: entity work.base_auto_cc_1_wr_status_flags_as
     port map (
      E(0) => \^e\(0),
      Q(0) => wr_pntr_plus2(3),
      RD_PNTR_WR(0) => RD_PNTR_WR(3),
      m_aclk => m_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => \out\,
      ram_full_fb_i_reg_0 => \gwas.wsts_n_0\,
      ram_full_i_reg_0 => wpntr_n_0
    );
wpntr: entity work.base_auto_cc_1_wr_bin_cntr
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      Q(3) => wr_pntr_plus2(3),
      Q(2 downto 0) => Q(2 downto 0),
      RD_PNTR_WR(3 downto 0) => RD_PNTR_WR(3 downto 0),
      \dest_out_bin_ff_reg[3]\ => wpntr_n_0,
      \gic0.gc0.count_d2_reg[3]_0\(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      m_aclk => m_aclk,
      ram_full_i_reg => ram_full_i_reg,
      ram_full_i_reg_0 => \gwas.wsts_n_0\,
      ram_full_i_reg_1 => ram_full_i_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_wr_logic_1 is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg_0 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_wr_logic_1 : entity is "wr_logic";
end base_auto_cc_1_wr_logic_1;

architecture STRUCTURE of base_auto_cc_1_wr_logic_1 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gwas.wsts_n_0\ : STD_LOGIC;
  signal wpntr_n_4 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  E(0) <= \^e\(0);
\gwas.wsts\: entity work.base_auto_cc_1_wr_status_flags_as_2
     port map (
      E(0) => \^e\(0),
      Q(0) => wr_pntr_plus2(3),
      RD_PNTR_WR(0) => RD_PNTR_WR(3),
      \out\ => \out\,
      ram_full_fb_i_reg_0 => \gwas.wsts_n_0\,
      ram_full_i_reg_0 => wpntr_n_4,
      s_aclk => s_aclk,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
wpntr: entity work.base_auto_cc_1_wr_bin_cntr_3
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      Q(3) => wr_pntr_plus2(3),
      Q(2 downto 0) => Q(2 downto 0),
      RD_PNTR_WR(3 downto 0) => RD_PNTR_WR(3 downto 0),
      \dest_out_bin_ff_reg[3]\ => wpntr_n_4,
      \gic0.gc0.count_d2_reg[3]_0\(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      ram_full_i_reg => ram_full_i_reg,
      ram_full_i_reg_0 => \gwas.wsts_n_0\,
      ram_full_i_reg_1 => ram_full_i_reg_0,
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_wr_logic_15 is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg_0 : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_wr_logic_15 : entity is "wr_logic";
end base_auto_cc_1_wr_logic_15;

architecture STRUCTURE of base_auto_cc_1_wr_logic_15 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gwas.wsts_n_0\ : STD_LOGIC;
  signal wpntr_n_0 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  E(0) <= \^e\(0);
\gwas.wsts\: entity work.base_auto_cc_1_wr_status_flags_as_16
     port map (
      E(0) => \^e\(0),
      Q(0) => wr_pntr_plus2(3),
      RD_PNTR_WR(0) => RD_PNTR_WR(3),
      m_aclk => m_aclk,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      ram_full_fb_i_reg_0 => \gwas.wsts_n_0\,
      ram_full_i_reg_0 => wpntr_n_0
    );
wpntr: entity work.base_auto_cc_1_wr_bin_cntr_17
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      Q(3) => wr_pntr_plus2(3),
      Q(2 downto 0) => Q(2 downto 0),
      RD_PNTR_WR(3 downto 0) => RD_PNTR_WR(3 downto 0),
      \dest_out_bin_ff_reg[3]\ => wpntr_n_0,
      \gic0.gc0.count_d2_reg[3]_0\(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      m_aclk => m_aclk,
      ram_full_i_reg => ram_full_i_reg,
      ram_full_i_reg_0 => \gwas.wsts_n_0\,
      ram_full_i_reg_1 => ram_full_i_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_wr_logic_22 is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg_0 : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_wr_logic_22 : entity is "wr_logic";
end base_auto_cc_1_wr_logic_22;

architecture STRUCTURE of base_auto_cc_1_wr_logic_22 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gwas.wsts_n_0\ : STD_LOGIC;
  signal wpntr_n_4 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  E(0) <= \^e\(0);
\gwas.wsts\: entity work.base_auto_cc_1_wr_status_flags_as_25
     port map (
      E(0) => \^e\(0),
      Q(0) => wr_pntr_plus2(3),
      RD_PNTR_WR(0) => RD_PNTR_WR(3),
      \out\ => \out\,
      ram_full_fb_i_reg_0 => \gwas.wsts_n_0\,
      ram_full_i_reg_0 => wpntr_n_4,
      s_aclk => s_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid
    );
wpntr: entity work.base_auto_cc_1_wr_bin_cntr_26
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      Q(3) => wr_pntr_plus2(3),
      Q(2 downto 0) => Q(2 downto 0),
      RD_PNTR_WR(3 downto 0) => RD_PNTR_WR(3 downto 0),
      \dest_out_bin_ff_reg[3]\ => wpntr_n_4,
      \gic0.gc0.count_d2_reg[3]_0\(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      ram_full_i_reg => ram_full_i_reg,
      ram_full_i_reg_0 => \gwas.wsts_n_0\,
      ram_full_i_reg_1 => ram_full_i_reg_0,
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_wr_logic_8 is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg_0 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_auto_cc_1_wr_logic_8 : entity is "wr_logic";
end base_auto_cc_1_wr_logic_8;

architecture STRUCTURE of base_auto_cc_1_wr_logic_8 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gwas.wsts_n_0\ : STD_LOGIC;
  signal wpntr_n_4 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  E(0) <= \^e\(0);
\gwas.wsts\: entity work.base_auto_cc_1_wr_status_flags_as_9
     port map (
      E(0) => \^e\(0),
      Q(0) => wr_pntr_plus2(3),
      RD_PNTR_WR(0) => RD_PNTR_WR(3),
      \out\ => \out\,
      ram_full_fb_i_reg_0 => \gwas.wsts_n_0\,
      ram_full_i_reg_0 => wpntr_n_4,
      s_aclk => s_aclk,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid
    );
wpntr: entity work.base_auto_cc_1_wr_bin_cntr_10
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      Q(3) => wr_pntr_plus2(3),
      Q(2 downto 0) => Q(2 downto 0),
      RD_PNTR_WR(3 downto 0) => RD_PNTR_WR(3 downto 0),
      \dest_out_bin_ff_reg[3]\ => wpntr_n_4,
      \gic0.gc0.count_d2_reg[3]_0\(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      ram_full_i_reg => ram_full_i_reg,
      ram_full_i_reg_0 => \gwas.wsts_n_0\,
      ram_full_i_reg_1 => ram_full_i_reg_0,
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_fifo_generator_ramfifo is
  port (
    src_in : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    \goreg_dm.dout_i_reg[61]\ : out STD_LOGIC_VECTOR ( 61 downto 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    I474 : in STD_LOGIC_VECTOR ( 61 downto 0 )
  );
end base_auto_cc_1_fifo_generator_ramfifo;

architecture STRUCTURE of base_auto_cc_1_fifo_generator_ramfifo is
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_5\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_4\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_20_out : STD_LOGIC;
  signal p_24_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_0 : STD_LOGIC;
  signal rstblk_n_1 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\gntv_or_sync_fifo.gcx.clkx\: entity work.\base_auto_cc_1_clk_x_pntrs__xdcDup__4\
     port map (
      Q(2 downto 0) => wr_pntr_plus2(2 downto 0),
      RD_PNTR_WR(3 downto 0) => p_25_out(3 downto 0),
      WR_PNTR_RD(3 downto 0) => p_24_out(3 downto 0),
      \dest_out_bin_ff_reg[2]\ => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      \dest_out_bin_ff_reg[2]_0\ => \gntv_or_sync_fifo.gcx.clkx_n_5\,
      m_aclk => m_aclk,
      ram_empty_i_reg(2 downto 0) => rd_pntr_plus1(2 downto 0),
      s_aclk => s_aclk,
      \src_gray_ff_reg[3]\(3 downto 0) => p_13_out(3 downto 0),
      \src_gray_ff_reg[3]_0\(3 downto 0) => p_0_out(3 downto 0)
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.base_auto_cc_1_rd_logic_21
     port map (
      E(0) => ram_rd_en_i,
      Q(2 downto 0) => rd_pntr_plus1(2 downto 0),
      WR_PNTR_RD(3 downto 0) => p_24_out(3 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => p_0_out(3 downto 0),
      \gc0.count_d1_reg[3]_0\ => rstblk_n_1,
      m_aclk => m_aclk,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0) => \gntv_or_sync_fifo.gl0.rd_n_4\,
      ram_empty_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_5\
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.base_auto_cc_1_wr_logic_22
     port map (
      AR(0) => rstblk_n_0,
      E(0) => p_20_out,
      Q(2 downto 0) => wr_pntr_plus2(2 downto 0),
      RD_PNTR_WR(3 downto 0) => p_25_out(3 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_13_out(3 downto 0),
      \out\ => rst_full_ff_i,
      ram_full_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      ram_full_i_reg_0 => rst_full_gen_i,
      s_aclk => s_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid
    );
\gntv_or_sync_fifo.mem\: entity work.base_auto_cc_1_memory_23
     port map (
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_4\,
      I474(61 downto 0) => I474(61 downto 0),
      I67 => p_20_out,
      count_d1(3 downto 0) => p_0_out(3 downto 0),
      \goreg_dm.dout_i_reg[61]_0\(61 downto 0) => \goreg_dm.dout_i_reg[61]\(61 downto 0),
      \gpr1.dout_i_reg[1]\(3 downto 0) => p_13_out(3 downto 0),
      \gpr1.dout_i_reg[61]\(0) => ram_rd_en_i,
      m_aclk => m_aclk,
      s_aclk => s_aclk
    );
rstblk: entity work.\base_auto_cc_1_reset_blk_ramfifo__xdcDup__4\
     port map (
      AR(0) => rstblk_n_0,
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => rst_full_gen_i,
      m_aclk => m_aclk,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ => rstblk_n_1,
      \out\ => rst_full_ff_i,
      s_aclk => s_aclk,
      src_arst => src_arst,
      src_in => src_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_fifo_generator_ramfifo__parameterized0\ is
  port (
    src_in : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    \goreg_dm.dout_i_reg[72]\ : out STD_LOGIC_VECTOR ( 72 downto 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    I468 : in STD_LOGIC_VECTOR ( 72 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_fifo_generator_ramfifo__parameterized0\ : entity is "fifo_generator_ramfifo";
end \base_auto_cc_1_fifo_generator_ramfifo__parameterized0\;

architecture STRUCTURE of \base_auto_cc_1_fifo_generator_ramfifo__parameterized0\ is
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_5\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_4\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_20_out : STD_LOGIC;
  signal p_24_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_0 : STD_LOGIC;
  signal rstblk_n_1 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\gntv_or_sync_fifo.gcx.clkx\: entity work.\base_auto_cc_1_clk_x_pntrs__xdcDup__2\
     port map (
      Q(2 downto 0) => wr_pntr_plus2(2 downto 0),
      RD_PNTR_WR(3 downto 0) => p_25_out(3 downto 0),
      WR_PNTR_RD(3 downto 0) => p_24_out(3 downto 0),
      \dest_out_bin_ff_reg[2]\ => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      \dest_out_bin_ff_reg[2]_0\ => \gntv_or_sync_fifo.gcx.clkx_n_5\,
      m_aclk => m_aclk,
      ram_empty_i_reg(2 downto 0) => rd_pntr_plus1(2 downto 0),
      s_aclk => s_aclk,
      \src_gray_ff_reg[3]\(3 downto 0) => p_13_out(3 downto 0),
      \src_gray_ff_reg[3]_0\(3 downto 0) => p_0_out(3 downto 0)
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.base_auto_cc_1_rd_logic_0
     port map (
      E(0) => ram_rd_en_i,
      Q(2 downto 0) => rd_pntr_plus1(2 downto 0),
      WR_PNTR_RD(3 downto 0) => p_24_out(3 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => p_0_out(3 downto 0),
      \gc0.count_d1_reg[3]_0\ => rstblk_n_1,
      m_aclk => m_aclk,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0) => \gntv_or_sync_fifo.gl0.rd_n_4\,
      ram_empty_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_5\
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.base_auto_cc_1_wr_logic_1
     port map (
      AR(0) => rstblk_n_0,
      E(0) => p_20_out,
      Q(2 downto 0) => wr_pntr_plus2(2 downto 0),
      RD_PNTR_WR(3 downto 0) => p_25_out(3 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_13_out(3 downto 0),
      \out\ => rst_full_ff_i,
      ram_full_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      ram_full_i_reg_0 => rst_full_gen_i,
      s_aclk => s_aclk,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
\gntv_or_sync_fifo.mem\: entity work.\base_auto_cc_1_memory__parameterized0\
     port map (
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_4\,
      I468(72 downto 0) => I468(72 downto 0),
      I59 => p_20_out,
      count_d1(3 downto 0) => p_0_out(3 downto 0),
      \goreg_dm.dout_i_reg[72]_0\(72 downto 0) => \goreg_dm.dout_i_reg[72]\(72 downto 0),
      \gpr1.dout_i_reg[1]\(3 downto 0) => p_13_out(3 downto 0),
      \gpr1.dout_i_reg[72]\(0) => ram_rd_en_i,
      m_aclk => m_aclk,
      s_aclk => s_aclk
    );
rstblk: entity work.\base_auto_cc_1_reset_blk_ramfifo__xdcDup__2\
     port map (
      AR(0) => rstblk_n_0,
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => rst_full_gen_i,
      m_aclk => m_aclk,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ => rstblk_n_1,
      \out\ => rst_full_ff_i,
      s_aclk => s_aclk,
      src_arst => src_arst,
      src_in => src_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_fifo_generator_ramfifo__parameterized1\ is
  port (
    s_axi_bvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    src_arst : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    I471 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_fifo_generator_ramfifo__parameterized1\ : entity is "fifo_generator_ramfifo";
end \base_auto_cc_1_fifo_generator_ramfifo__parameterized1\;

architecture STRUCTURE of \base_auto_cc_1_fifo_generator_ramfifo__parameterized1\ is
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_5\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_0\ : STD_LOGIC;
  signal \gr1.gr1_int.rfwft/p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_20_out : STD_LOGIC;
  signal p_24_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_0 : STD_LOGIC;
  signal rstblk_n_1 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\gntv_or_sync_fifo.gcx.clkx\: entity work.\base_auto_cc_1_clk_x_pntrs__xdcDup__3\
     port map (
      Q(2 downto 0) => rd_pntr_plus1(2 downto 0),
      RD_PNTR_WR(3 downto 0) => p_25_out(3 downto 0),
      WR_PNTR_RD(3 downto 0) => p_24_out(3 downto 0),
      \dest_out_bin_ff_reg[2]\ => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      \dest_out_bin_ff_reg[2]_0\ => \gntv_or_sync_fifo.gcx.clkx_n_5\,
      m_aclk => m_aclk,
      ram_full_i_reg(2 downto 0) => wr_pntr_plus2(2 downto 0),
      s_aclk => s_aclk,
      \src_gray_ff_reg[3]\(3 downto 0) => p_13_out(3 downto 0),
      \src_gray_ff_reg[3]_0\(3 downto 0) => p_0_out(3 downto 0)
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.base_auto_cc_1_rd_logic
     port map (
      E(0) => ram_rd_en_i,
      Q(2 downto 0) => rd_pntr_plus1(2 downto 0),
      WR_PNTR_RD(3 downto 0) => p_24_out(3 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => p_0_out(3 downto 0),
      \gc0.count_d1_reg[3]_0\ => rstblk_n_1,
      \out\(1) => \gntv_or_sync_fifo.gl0.rd_n_0\,
      \out\(0) => \gr1.gr1_int.rfwft/p_0_in\(0),
      ram_empty_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      s_aclk => s_aclk,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.base_auto_cc_1_wr_logic
     port map (
      AR(0) => rstblk_n_0,
      E(0) => p_20_out,
      Q(2 downto 0) => wr_pntr_plus2(2 downto 0),
      RD_PNTR_WR(3 downto 0) => p_25_out(3 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_13_out(3 downto 0),
      m_aclk => m_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => rst_full_ff_i,
      ram_full_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_5\,
      ram_full_i_reg_0 => rst_full_gen_i
    );
\gntv_or_sync_fifo.mem\: entity work.\base_auto_cc_1_memory__parameterized1\
     port map (
      E(0) => ram_rd_en_i,
      I471(2 downto 0) => I471(2 downto 0),
      I80(3 downto 0) => p_0_out(3 downto 0),
      I81(3 downto 0) => p_13_out(3 downto 0),
      \goreg_dm.dout_i_reg[2]_0\ => rstblk_n_1,
      m_aclk => m_aclk,
      \out\(1) => \gntv_or_sync_fifo.gl0.rd_n_0\,
      \out\(0) => \gr1.gr1_int.rfwft/p_0_in\(0),
      p_20_out => p_20_out,
      s_aclk => s_aclk,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0)
    );
rstblk: entity work.\base_auto_cc_1_reset_blk_ramfifo__xdcDup__3\
     port map (
      AR(0) => rstblk_n_0,
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => rst_full_gen_i,
      m_aclk => m_aclk,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ => rstblk_n_1,
      \out\ => rst_full_ff_i,
      s_aclk => s_aclk,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_fifo_generator_ramfifo__parameterized2\ is
  port (
    src_arst : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    \goreg_dm.dout_i_reg[67]\ : out STD_LOGIC_VECTOR ( 67 downto 0 );
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    I477 : in STD_LOGIC_VECTOR ( 67 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_fifo_generator_ramfifo__parameterized2\ : entity is "fifo_generator_ramfifo";
end \base_auto_cc_1_fifo_generator_ramfifo__parameterized2\;

architecture STRUCTURE of \base_auto_cc_1_fifo_generator_ramfifo__parameterized2\ is
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_5\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_4\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_20_out : STD_LOGIC;
  signal p_24_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_1 : STD_LOGIC;
  signal rstblk_n_2 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\gntv_or_sync_fifo.gcx.clkx\: entity work.base_auto_cc_1_clk_x_pntrs
     port map (
      Q(2 downto 0) => rd_pntr_plus1(2 downto 0),
      RD_PNTR_WR(3 downto 0) => p_25_out(3 downto 0),
      WR_PNTR_RD(3 downto 0) => p_24_out(3 downto 0),
      \dest_out_bin_ff_reg[2]\ => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      \dest_out_bin_ff_reg[2]_0\ => \gntv_or_sync_fifo.gcx.clkx_n_5\,
      m_aclk => m_aclk,
      ram_full_i_reg(2 downto 0) => wr_pntr_plus2(2 downto 0),
      s_aclk => s_aclk,
      \src_gray_ff_reg[3]\(3 downto 0) => p_13_out(3 downto 0),
      \src_gray_ff_reg[3]_0\(3 downto 0) => p_0_out(3 downto 0)
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.base_auto_cc_1_rd_logic_14
     port map (
      E(0) => ram_rd_en_i,
      Q(2 downto 0) => rd_pntr_plus1(2 downto 0),
      WR_PNTR_RD(3 downto 0) => p_24_out(3 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => p_0_out(3 downto 0),
      \gc0.count_d1_reg[3]_0\ => rstblk_n_2,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0) => \gntv_or_sync_fifo.gl0.rd_n_4\,
      ram_empty_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      s_aclk => s_aclk,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.base_auto_cc_1_wr_logic_15
     port map (
      AR(0) => rstblk_n_1,
      E(0) => p_20_out,
      Q(2 downto 0) => wr_pntr_plus2(2 downto 0),
      RD_PNTR_WR(3 downto 0) => p_25_out(3 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_13_out(3 downto 0),
      m_aclk => m_aclk,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \out\ => rst_full_ff_i,
      ram_full_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_5\,
      ram_full_i_reg_0 => rst_full_gen_i
    );
\gntv_or_sync_fifo.mem\: entity work.\base_auto_cc_1_memory__parameterized2\
     port map (
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_4\,
      I477(67 downto 0) => I477(67 downto 0),
      I71 => p_20_out,
      count_d1(3 downto 0) => p_0_out(3 downto 0),
      \goreg_dm.dout_i_reg[67]_0\(67 downto 0) => \goreg_dm.dout_i_reg[67]\(67 downto 0),
      \gpr1.dout_i_reg[1]\(3 downto 0) => p_13_out(3 downto 0),
      \gpr1.dout_i_reg[67]\(0) => ram_rd_en_i,
      m_aclk => m_aclk,
      s_aclk => s_aclk
    );
rstblk: entity work.base_auto_cc_1_reset_blk_ramfifo
     port map (
      AR(0) => rstblk_n_1,
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => rst_full_gen_i,
      m_aclk => m_aclk,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ => rstblk_n_2,
      \out\ => rst_full_ff_i,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_fifo_generator_ramfifo__xdcDup__1\ is
  port (
    src_in : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 61 downto 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 61 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_fifo_generator_ramfifo__xdcDup__1\ : entity is "fifo_generator_ramfifo";
end \base_auto_cc_1_fifo_generator_ramfifo__xdcDup__1\;

architecture STRUCTURE of \base_auto_cc_1_fifo_generator_ramfifo__xdcDup__1\ is
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_5\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_4\ : STD_LOGIC;
  signal p_0_out_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_20_out : STD_LOGIC;
  signal p_24_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_0 : STD_LOGIC;
  signal rstblk_n_1 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\gntv_or_sync_fifo.gcx.clkx\: entity work.\base_auto_cc_1_clk_x_pntrs__xdcDup__1\
     port map (
      Q(2 downto 0) => wr_pntr_plus2(2 downto 0),
      RD_PNTR_WR(3 downto 0) => p_25_out(3 downto 0),
      WR_PNTR_RD(3 downto 0) => p_24_out(3 downto 0),
      \dest_out_bin_ff_reg[2]\ => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      \dest_out_bin_ff_reg[2]_0\ => \gntv_or_sync_fifo.gcx.clkx_n_5\,
      m_aclk => m_aclk,
      ram_empty_i_reg(2 downto 0) => rd_pntr_plus1(2 downto 0),
      s_aclk => s_aclk,
      \src_gray_ff_reg[3]\(3 downto 0) => p_13_out(3 downto 0),
      \src_gray_ff_reg[3]_0\(3 downto 0) => p_0_out_0(3 downto 0)
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.base_auto_cc_1_rd_logic_7
     port map (
      E(0) => ram_rd_en_i,
      Q(2 downto 0) => rd_pntr_plus1(2 downto 0),
      WR_PNTR_RD(3 downto 0) => p_24_out(3 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => p_0_out_0(3 downto 0),
      \gc0.count_d1_reg[3]_0\ => rstblk_n_1,
      m_aclk => m_aclk,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0) => \gntv_or_sync_fifo.gl0.rd_n_4\,
      ram_empty_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_5\
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.base_auto_cc_1_wr_logic_8
     port map (
      AR(0) => rstblk_n_0,
      E(0) => p_20_out,
      Q(2 downto 0) => wr_pntr_plus2(2 downto 0),
      RD_PNTR_WR(3 downto 0) => p_25_out(3 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_13_out(3 downto 0),
      \out\ => rst_full_ff_i,
      ram_full_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      ram_full_i_reg_0 => rst_full_gen_i,
      s_aclk => s_aclk,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid
    );
\gntv_or_sync_fifo.mem\: entity work.base_auto_cc_1_memory
     port map (
      DI(61 downto 0) => DI(61 downto 0),
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_4\,
      EN => p_20_out,
      Q(61 downto 0) => Q(61 downto 0),
      count_d1(3 downto 0) => p_0_out_0(3 downto 0),
      \gpr1.dout_i_reg[1]\(3 downto 0) => p_13_out(3 downto 0),
      \gpr1.dout_i_reg[61]\(0) => ram_rd_en_i,
      m_aclk => m_aclk,
      s_aclk => s_aclk
    );
rstblk: entity work.\base_auto_cc_1_reset_blk_ramfifo__xdcDup__1\
     port map (
      AR(0) => rstblk_n_0,
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => rst_full_gen_i,
      m_aclk => m_aclk,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0\ => rstblk_n_1,
      \out\ => rst_full_ff_i,
      s_aclk => s_aclk,
      src_arst => src_arst,
      src_in => src_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_fifo_generator_top is
  port (
    src_in : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    \goreg_dm.dout_i_reg[61]\ : out STD_LOGIC_VECTOR ( 61 downto 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    I474 : in STD_LOGIC_VECTOR ( 61 downto 0 )
  );
end base_auto_cc_1_fifo_generator_top;

architecture STRUCTURE of base_auto_cc_1_fifo_generator_top is
begin
\grf.rf\: entity work.base_auto_cc_1_fifo_generator_ramfifo
     port map (
      I474(61 downto 0) => I474(61 downto 0),
      \goreg_dm.dout_i_reg[61]\(61 downto 0) => \goreg_dm.dout_i_reg[61]\(61 downto 0),
      m_aclk => m_aclk,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      s_aclk => s_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      src_arst => src_arst,
      src_in => src_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_fifo_generator_top__parameterized0\ is
  port (
    src_in : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    \goreg_dm.dout_i_reg[72]\ : out STD_LOGIC_VECTOR ( 72 downto 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    I468 : in STD_LOGIC_VECTOR ( 72 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_fifo_generator_top__parameterized0\ : entity is "fifo_generator_top";
end \base_auto_cc_1_fifo_generator_top__parameterized0\;

architecture STRUCTURE of \base_auto_cc_1_fifo_generator_top__parameterized0\ is
begin
\grf.rf\: entity work.\base_auto_cc_1_fifo_generator_ramfifo__parameterized0\
     port map (
      I468(72 downto 0) => I468(72 downto 0),
      \goreg_dm.dout_i_reg[72]\(72 downto 0) => \goreg_dm.dout_i_reg[72]\(72 downto 0),
      m_aclk => m_aclk,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      s_aclk => s_aclk,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      src_arst => src_arst,
      src_in => src_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_fifo_generator_top__parameterized1\ is
  port (
    s_axi_bvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    src_arst : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    I471 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_fifo_generator_top__parameterized1\ : entity is "fifo_generator_top";
end \base_auto_cc_1_fifo_generator_top__parameterized1\;

architecture STRUCTURE of \base_auto_cc_1_fifo_generator_top__parameterized1\ is
begin
\grf.rf\: entity work.\base_auto_cc_1_fifo_generator_ramfifo__parameterized1\
     port map (
      I471(2 downto 0) => I471(2 downto 0),
      m_aclk => m_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      s_aclk => s_aclk,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_fifo_generator_top__parameterized2\ is
  port (
    src_arst : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    \goreg_dm.dout_i_reg[67]\ : out STD_LOGIC_VECTOR ( 67 downto 0 );
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    I477 : in STD_LOGIC_VECTOR ( 67 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_fifo_generator_top__parameterized2\ : entity is "fifo_generator_top";
end \base_auto_cc_1_fifo_generator_top__parameterized2\;

architecture STRUCTURE of \base_auto_cc_1_fifo_generator_top__parameterized2\ is
begin
\grf.rf\: entity work.\base_auto_cc_1_fifo_generator_ramfifo__parameterized2\
     port map (
      I477(67 downto 0) => I477(67 downto 0),
      \goreg_dm.dout_i_reg[67]\(67 downto 0) => \goreg_dm.dout_i_reg[67]\(67 downto 0),
      m_aclk => m_aclk,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_auto_cc_1_fifo_generator_top__xdcDup__1\ is
  port (
    src_in : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 61 downto 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 61 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_auto_cc_1_fifo_generator_top__xdcDup__1\ : entity is "fifo_generator_top";
end \base_auto_cc_1_fifo_generator_top__xdcDup__1\;

architecture STRUCTURE of \base_auto_cc_1_fifo_generator_top__xdcDup__1\ is
begin
\grf.rf\: entity work.\base_auto_cc_1_fifo_generator_ramfifo__xdcDup__1\
     port map (
      DI(61 downto 0) => DI(61 downto 0),
      Q(61 downto 0) => Q(61 downto 0),
      m_aclk => m_aclk,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      s_aclk => s_aclk,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      src_arst => src_arst,
      src_in => src_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_fifo_generator_v13_2_3_synth is
  port (
    Q : out STD_LOGIC_VECTOR ( 61 downto 0 );
    \goreg_dm.dout_i_reg[72]\ : out STD_LOGIC_VECTOR ( 72 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \goreg_dm.dout_i_reg[61]\ : out STD_LOGIC_VECTOR ( 61 downto 0 );
    \goreg_dm.dout_i_reg[67]\ : out STD_LOGIC_VECTOR ( 67 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 61 downto 0 );
    I468 : in STD_LOGIC_VECTOR ( 72 downto 0 );
    I471 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I474 : in STD_LOGIC_VECTOR ( 61 downto 0 );
    I477 : in STD_LOGIC_VECTOR ( 67 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    s_aresetn : in STD_LOGIC
  );
end base_auto_cc_1_fifo_generator_v13_2_3_synth;

architecture STRUCTURE of base_auto_cc_1_fifo_generator_v13_2_3_synth is
  signal dest_out : STD_LOGIC;
  signal dest_out40_out : STD_LOGIC;
  signal inverted_reset : STD_LOGIC;
  signal wr_rst_busy_rach : STD_LOGIC;
  signal wr_rst_busy_rach_sync : STD_LOGIC;
  signal wr_rst_busy_wach : STD_LOGIC;
  signal wr_rst_busy_wdch : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gaxi_full_lite.gread_ch.grach2.xpm_cdc_single_inst3\ : label is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gaxi_full_lite.gread_ch.grach2.xpm_cdc_single_inst3\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gaxi_full_lite.gread_ch.grach2.xpm_cdc_single_inst3\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \gaxi_full_lite.gread_ch.grach2.xpm_cdc_single_inst3\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \gaxi_full_lite.gread_ch.grach2.xpm_cdc_single_inst3\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gaxi_full_lite.gread_ch.grach2.xpm_cdc_single_inst3\ : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gaxi_full_lite.gread_ch.grach2.xpm_cdc_single_inst3\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gaxi_full_lite.gwrite_ch.gwach2.xpm_cdc_single_inst1\ : label is 4;
  attribute INIT_SYNC_FF of \gaxi_full_lite.gwrite_ch.gwach2.xpm_cdc_single_inst1\ : label is 0;
  attribute SIM_ASSERT_CHK of \gaxi_full_lite.gwrite_ch.gwach2.xpm_cdc_single_inst1\ : label is 0;
  attribute SRC_INPUT_REG of \gaxi_full_lite.gwrite_ch.gwach2.xpm_cdc_single_inst1\ : label is 1;
  attribute VERSION of \gaxi_full_lite.gwrite_ch.gwach2.xpm_cdc_single_inst1\ : label is 0;
  attribute XPM_CDC of \gaxi_full_lite.gwrite_ch.gwach2.xpm_cdc_single_inst1\ : label is "SINGLE";
  attribute XPM_MODULE of \gaxi_full_lite.gwrite_ch.gwach2.xpm_cdc_single_inst1\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gaxi_full_lite.gwrite_ch.gwdch2.xpm_cdc_single_inst2\ : label is 4;
  attribute INIT_SYNC_FF of \gaxi_full_lite.gwrite_ch.gwdch2.xpm_cdc_single_inst2\ : label is 0;
  attribute SIM_ASSERT_CHK of \gaxi_full_lite.gwrite_ch.gwdch2.xpm_cdc_single_inst2\ : label is 0;
  attribute SRC_INPUT_REG of \gaxi_full_lite.gwrite_ch.gwdch2.xpm_cdc_single_inst2\ : label is 1;
  attribute VERSION of \gaxi_full_lite.gwrite_ch.gwdch2.xpm_cdc_single_inst2\ : label is 0;
  attribute XPM_CDC of \gaxi_full_lite.gwrite_ch.gwdch2.xpm_cdc_single_inst2\ : label is "SINGLE";
  attribute XPM_MODULE of \gaxi_full_lite.gwrite_ch.gwdch2.xpm_cdc_single_inst2\ : label is "TRUE";
begin
\gaxi_full_lite.gread_ch.grach2.axi_rach\: entity work.base_auto_cc_1_fifo_generator_top
     port map (
      I474(61 downto 0) => I474(61 downto 0),
      \goreg_dm.dout_i_reg[61]\(61 downto 0) => \goreg_dm.dout_i_reg[61]\(61 downto 0),
      m_aclk => m_aclk,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      s_aclk => s_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      src_arst => inverted_reset,
      src_in => wr_rst_busy_rach
    );
\gaxi_full_lite.gread_ch.grach2.xpm_cdc_single_inst3\: entity work.base_auto_cc_1_xpm_cdc_single
     port map (
      dest_clk => m_aclk,
      dest_out => wr_rst_busy_rach_sync,
      src_clk => s_aclk,
      src_in => wr_rst_busy_rach
    );
\gaxi_full_lite.gread_ch.grdch2.axi_rdch\: entity work.\base_auto_cc_1_fifo_generator_top__parameterized2\
     port map (
      I477(67 downto 0) => I477(67 downto 0),
      \goreg_dm.dout_i_reg[67]\(67 downto 0) => \goreg_dm.dout_i_reg[67]\(67 downto 0),
      m_aclk => m_aclk,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      src_arst => inverted_reset
    );
\gaxi_full_lite.gwrite_ch.gwach2.axi_wach\: entity work.\base_auto_cc_1_fifo_generator_top__xdcDup__1\
     port map (
      DI(61 downto 0) => DI(61 downto 0),
      Q(61 downto 0) => Q(61 downto 0),
      m_aclk => m_aclk,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      s_aclk => s_aclk,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      src_arst => inverted_reset,
      src_in => wr_rst_busy_wach
    );
\gaxi_full_lite.gwrite_ch.gwach2.xpm_cdc_single_inst1\: entity work.\base_auto_cc_1_xpm_cdc_single__3\
     port map (
      dest_clk => m_aclk,
      dest_out => dest_out,
      src_clk => s_aclk,
      src_in => wr_rst_busy_wach
    );
\gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch\: entity work.\base_auto_cc_1_fifo_generator_top__parameterized0\
     port map (
      I468(72 downto 0) => I468(72 downto 0),
      \goreg_dm.dout_i_reg[72]\(72 downto 0) => \goreg_dm.dout_i_reg[72]\(72 downto 0),
      m_aclk => m_aclk,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      s_aclk => s_aclk,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      src_arst => inverted_reset,
      src_in => wr_rst_busy_wdch
    );
\gaxi_full_lite.gwrite_ch.gwdch2.xpm_cdc_single_inst2\: entity work.\base_auto_cc_1_xpm_cdc_single__4\
     port map (
      dest_clk => m_aclk,
      dest_out => dest_out40_out,
      src_clk => s_aclk,
      src_in => wr_rst_busy_wdch
    );
\gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch\: entity work.\base_auto_cc_1_fifo_generator_top__parameterized1\
     port map (
      I471(2 downto 0) => I471(2 downto 0),
      m_aclk => m_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      s_aclk => s_aclk,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      src_arst => inverted_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_fifo_generator_v13_2_3 is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 17 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 9 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 17 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 18;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 62;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 68;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 62;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 73;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 3;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of base_auto_cc_1_fifo_generator_v13_2_3 : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 18;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of base_auto_cc_1_fifo_generator_v13_2_3 : entity is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 11;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 12;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 12;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 12;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 12;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 12;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 2;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of base_auto_cc_1_fifo_generator_v13_2_3 : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is "4kx4";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1021;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 13;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 13;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 13;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 13;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 13;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1022;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 15;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1021;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 3;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 16;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 16;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 4;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 4;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of base_auto_cc_1_fifo_generator_v13_2_3 : entity is 1;
end base_auto_cc_1_fifo_generator_v13_2_3;

architecture STRUCTURE of base_auto_cc_1_fifo_generator_v13_2_3 is
  signal \<const0>\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const0>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const0>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const0>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const0>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const0>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const0>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(9) <= \<const0>\;
  data_count(8) <= \<const0>\;
  data_count(7) <= \<const0>\;
  data_count(6) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  dout(17) <= \<const0>\;
  dout(16) <= \<const0>\;
  dout(15) <= \<const0>\;
  dout(14) <= \<const0>\;
  dout(13) <= \<const0>\;
  dout(12) <= \<const0>\;
  dout(11) <= \<const0>\;
  dout(10) <= \<const0>\;
  dout(9) <= \<const0>\;
  dout(8) <= \<const0>\;
  dout(7) <= \<const0>\;
  dout(6) <= \<const0>\;
  dout(5) <= \<const0>\;
  dout(4) <= \<const0>\;
  dout(3) <= \<const0>\;
  dout(2) <= \<const0>\;
  dout(1) <= \<const0>\;
  dout(0) <= \<const0>\;
  empty <= \<const0>\;
  full <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(9) <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(9) <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_fifo_gen: entity work.base_auto_cc_1_fifo_generator_v13_2_3_synth
     port map (
      DI(61) => s_axi_awid(0),
      DI(60 downto 29) => s_axi_awaddr(31 downto 0),
      DI(28 downto 21) => s_axi_awlen(7 downto 0),
      DI(20 downto 18) => s_axi_awsize(2 downto 0),
      DI(17 downto 16) => s_axi_awburst(1 downto 0),
      DI(15) => s_axi_awlock(0),
      DI(14 downto 11) => s_axi_awcache(3 downto 0),
      DI(10 downto 8) => s_axi_awprot(2 downto 0),
      DI(7 downto 4) => s_axi_awqos(3 downto 0),
      DI(3 downto 0) => s_axi_awregion(3 downto 0),
      I468(72 downto 9) => s_axi_wdata(63 downto 0),
      I468(8 downto 1) => s_axi_wstrb(7 downto 0),
      I468(0) => s_axi_wlast,
      I471(2) => m_axi_bid(0),
      I471(1 downto 0) => m_axi_bresp(1 downto 0),
      I474(61) => s_axi_arid(0),
      I474(60 downto 29) => s_axi_araddr(31 downto 0),
      I474(28 downto 21) => s_axi_arlen(7 downto 0),
      I474(20 downto 18) => s_axi_arsize(2 downto 0),
      I474(17 downto 16) => s_axi_arburst(1 downto 0),
      I474(15) => s_axi_arlock(0),
      I474(14 downto 11) => s_axi_arcache(3 downto 0),
      I474(10 downto 8) => s_axi_arprot(2 downto 0),
      I474(7 downto 4) => s_axi_arqos(3 downto 0),
      I474(3 downto 0) => s_axi_arregion(3 downto 0),
      I477(67) => m_axi_rid(0),
      I477(66 downto 3) => m_axi_rdata(63 downto 0),
      I477(2 downto 1) => m_axi_rresp(1 downto 0),
      I477(0) => m_axi_rlast,
      Q(61) => m_axi_awid(0),
      Q(60 downto 29) => m_axi_awaddr(31 downto 0),
      Q(28 downto 21) => m_axi_awlen(7 downto 0),
      Q(20 downto 18) => m_axi_awsize(2 downto 0),
      Q(17 downto 16) => m_axi_awburst(1 downto 0),
      Q(15) => m_axi_awlock(0),
      Q(14 downto 11) => m_axi_awcache(3 downto 0),
      Q(10 downto 8) => m_axi_awprot(2 downto 0),
      Q(7 downto 4) => m_axi_awqos(3 downto 0),
      Q(3 downto 0) => m_axi_awregion(3 downto 0),
      \goreg_dm.dout_i_reg[61]\(61) => m_axi_arid(0),
      \goreg_dm.dout_i_reg[61]\(60 downto 29) => m_axi_araddr(31 downto 0),
      \goreg_dm.dout_i_reg[61]\(28 downto 21) => m_axi_arlen(7 downto 0),
      \goreg_dm.dout_i_reg[61]\(20 downto 18) => m_axi_arsize(2 downto 0),
      \goreg_dm.dout_i_reg[61]\(17 downto 16) => m_axi_arburst(1 downto 0),
      \goreg_dm.dout_i_reg[61]\(15) => m_axi_arlock(0),
      \goreg_dm.dout_i_reg[61]\(14 downto 11) => m_axi_arcache(3 downto 0),
      \goreg_dm.dout_i_reg[61]\(10 downto 8) => m_axi_arprot(2 downto 0),
      \goreg_dm.dout_i_reg[61]\(7 downto 4) => m_axi_arqos(3 downto 0),
      \goreg_dm.dout_i_reg[61]\(3 downto 0) => m_axi_arregion(3 downto 0),
      \goreg_dm.dout_i_reg[67]\(67) => s_axi_rid(0),
      \goreg_dm.dout_i_reg[67]\(66 downto 3) => s_axi_rdata(63 downto 0),
      \goreg_dm.dout_i_reg[67]\(2 downto 1) => s_axi_rresp(1 downto 0),
      \goreg_dm.dout_i_reg[67]\(0) => s_axi_rlast,
      \goreg_dm.dout_i_reg[72]\(72 downto 9) => m_axi_wdata(63 downto 0),
      \goreg_dm.dout_i_reg[72]\(8 downto 1) => m_axi_wstrb(7 downto 0),
      \goreg_dm.dout_i_reg[72]\(0) => m_axi_wlast,
      m_aclk => m_aclk,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_ARADDR_RIGHT : integer;
  attribute C_ARADDR_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 29;
  attribute C_ARADDR_WIDTH : integer;
  attribute C_ARADDR_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 32;
  attribute C_ARBURST_RIGHT : integer;
  attribute C_ARBURST_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 16;
  attribute C_ARBURST_WIDTH : integer;
  attribute C_ARBURST_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 2;
  attribute C_ARCACHE_RIGHT : integer;
  attribute C_ARCACHE_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 11;
  attribute C_ARCACHE_WIDTH : integer;
  attribute C_ARCACHE_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 4;
  attribute C_ARID_RIGHT : integer;
  attribute C_ARID_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 61;
  attribute C_ARID_WIDTH : integer;
  attribute C_ARID_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_ARLEN_RIGHT : integer;
  attribute C_ARLEN_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 21;
  attribute C_ARLEN_WIDTH : integer;
  attribute C_ARLEN_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 8;
  attribute C_ARLOCK_RIGHT : integer;
  attribute C_ARLOCK_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 15;
  attribute C_ARLOCK_WIDTH : integer;
  attribute C_ARLOCK_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_ARPROT_RIGHT : integer;
  attribute C_ARPROT_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 8;
  attribute C_ARPROT_WIDTH : integer;
  attribute C_ARPROT_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 3;
  attribute C_ARQOS_RIGHT : integer;
  attribute C_ARQOS_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute C_ARQOS_WIDTH : integer;
  attribute C_ARQOS_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 4;
  attribute C_ARREGION_RIGHT : integer;
  attribute C_ARREGION_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 4;
  attribute C_ARREGION_WIDTH : integer;
  attribute C_ARREGION_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 4;
  attribute C_ARSIZE_RIGHT : integer;
  attribute C_ARSIZE_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 18;
  attribute C_ARSIZE_WIDTH : integer;
  attribute C_ARSIZE_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 3;
  attribute C_ARUSER_RIGHT : integer;
  attribute C_ARUSER_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute C_ARUSER_WIDTH : integer;
  attribute C_ARUSER_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute C_AR_WIDTH : integer;
  attribute C_AR_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 62;
  attribute C_AWADDR_RIGHT : integer;
  attribute C_AWADDR_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 29;
  attribute C_AWADDR_WIDTH : integer;
  attribute C_AWADDR_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 32;
  attribute C_AWBURST_RIGHT : integer;
  attribute C_AWBURST_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 16;
  attribute C_AWBURST_WIDTH : integer;
  attribute C_AWBURST_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 2;
  attribute C_AWCACHE_RIGHT : integer;
  attribute C_AWCACHE_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 11;
  attribute C_AWCACHE_WIDTH : integer;
  attribute C_AWCACHE_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 4;
  attribute C_AWID_RIGHT : integer;
  attribute C_AWID_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 61;
  attribute C_AWID_WIDTH : integer;
  attribute C_AWID_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_AWLEN_RIGHT : integer;
  attribute C_AWLEN_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 21;
  attribute C_AWLEN_WIDTH : integer;
  attribute C_AWLEN_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 8;
  attribute C_AWLOCK_RIGHT : integer;
  attribute C_AWLOCK_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 15;
  attribute C_AWLOCK_WIDTH : integer;
  attribute C_AWLOCK_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_AWPROT_RIGHT : integer;
  attribute C_AWPROT_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 8;
  attribute C_AWPROT_WIDTH : integer;
  attribute C_AWPROT_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 3;
  attribute C_AWQOS_RIGHT : integer;
  attribute C_AWQOS_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute C_AWQOS_WIDTH : integer;
  attribute C_AWQOS_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 4;
  attribute C_AWREGION_RIGHT : integer;
  attribute C_AWREGION_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 4;
  attribute C_AWREGION_WIDTH : integer;
  attribute C_AWREGION_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 4;
  attribute C_AWSIZE_RIGHT : integer;
  attribute C_AWSIZE_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 18;
  attribute C_AWSIZE_WIDTH : integer;
  attribute C_AWSIZE_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 3;
  attribute C_AWUSER_RIGHT : integer;
  attribute C_AWUSER_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute C_AWUSER_WIDTH : integer;
  attribute C_AWUSER_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute C_AW_WIDTH : integer;
  attribute C_AW_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 62;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_AXI_IS_ACLK_ASYNC : integer;
  attribute C_AXI_IS_ACLK_ASYNC of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_BID_RIGHT : integer;
  attribute C_BID_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 2;
  attribute C_BID_WIDTH : integer;
  attribute C_BID_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_BRESP_RIGHT : integer;
  attribute C_BRESP_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute C_BRESP_WIDTH : integer;
  attribute C_BRESP_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 2;
  attribute C_BUSER_RIGHT : integer;
  attribute C_BUSER_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute C_BUSER_WIDTH : integer;
  attribute C_BUSER_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 3;
  attribute C_FAMILY : string;
  attribute C_FAMILY of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is "zynq";
  attribute C_FIFO_AR_WIDTH : integer;
  attribute C_FIFO_AR_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 62;
  attribute C_FIFO_AW_WIDTH : integer;
  attribute C_FIFO_AW_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 62;
  attribute C_FIFO_B_WIDTH : integer;
  attribute C_FIFO_B_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 3;
  attribute C_FIFO_R_WIDTH : integer;
  attribute C_FIFO_R_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 68;
  attribute C_FIFO_W_WIDTH : integer;
  attribute C_FIFO_W_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 73;
  attribute C_M_AXI_ACLK_RATIO : integer;
  attribute C_M_AXI_ACLK_RATIO of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 2;
  attribute C_RDATA_RIGHT : integer;
  attribute C_RDATA_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 3;
  attribute C_RDATA_WIDTH : integer;
  attribute C_RDATA_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 64;
  attribute C_RID_RIGHT : integer;
  attribute C_RID_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 67;
  attribute C_RID_WIDTH : integer;
  attribute C_RID_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_RLAST_RIGHT : integer;
  attribute C_RLAST_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute C_RLAST_WIDTH : integer;
  attribute C_RLAST_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_RRESP_RIGHT : integer;
  attribute C_RRESP_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_RRESP_WIDTH : integer;
  attribute C_RRESP_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 2;
  attribute C_RUSER_RIGHT : integer;
  attribute C_RUSER_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute C_RUSER_WIDTH : integer;
  attribute C_RUSER_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute C_R_WIDTH : integer;
  attribute C_R_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 68;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 3;
  attribute C_S_AXI_ACLK_RATIO : integer;
  attribute C_S_AXI_ACLK_RATIO of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_WDATA_RIGHT : integer;
  attribute C_WDATA_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 9;
  attribute C_WDATA_WIDTH : integer;
  attribute C_WDATA_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 64;
  attribute C_WID_RIGHT : integer;
  attribute C_WID_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 73;
  attribute C_WID_WIDTH : integer;
  attribute C_WID_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute C_WLAST_RIGHT : integer;
  attribute C_WLAST_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute C_WLAST_WIDTH : integer;
  attribute C_WLAST_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_WSTRB_RIGHT : integer;
  attribute C_WSTRB_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute C_WSTRB_WIDTH : integer;
  attribute C_WSTRB_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 8;
  attribute C_WUSER_RIGHT : integer;
  attribute C_WUSER_RIGHT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute C_WUSER_WIDTH : integer;
  attribute C_WUSER_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute C_W_WIDTH : integer;
  attribute C_W_WIDTH of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 73;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is "yes";
  attribute P_ACLK_RATIO : integer;
  attribute P_ACLK_RATIO of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 2;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 2;
  attribute P_FULLY_REG : integer;
  attribute P_FULLY_REG of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 1;
  attribute P_LIGHT_WT : integer;
  attribute P_LIGHT_WT of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute P_LUTRAM_ASYNC : integer;
  attribute P_LUTRAM_ASYNC of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 12;
  attribute P_ROUNDING_OFFSET : integer;
  attribute P_ROUNDING_OFFSET of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is 0;
  attribute P_SI_LT_MI : string;
  attribute P_SI_LT_MI of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter : entity is "1'b1";
end base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter;

architecture STRUCTURE of base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_clock_conv.async_conv_reset_n\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_almost_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_almost_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tlast_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tvalid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_rd_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_s_axis_tready_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_valid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_wr_ack_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_wr_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_dout_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axi_aruser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axi_awuser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axi_wid_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axi_wuser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tdata_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tdest_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tid_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tkeep_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tstrb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tuser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_s_axi_buser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_s_axi_ruser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_AXI_ADDR_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 32;
  attribute C_AXI_ARUSER_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_AXI_AWUSER_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_AXI_BUSER_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_AXI_DATA_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 64;
  attribute C_AXI_ID_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_AXI_RUSER_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_AXI_WUSER_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 18;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 62;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 68;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 62;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 73;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 3;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 18;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_FAMILY of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 11;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 12;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 12;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 12;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 12;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 12;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 2;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is "4kx4";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1021;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 13;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 13;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 13;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 13;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 13;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1022;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 15;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1021;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_SYNCHRONIZER_STAGE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 3;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 16;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 16;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 4;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 4;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of \gen_clock_conv.gen_async_conv.asyncfifo_axi\ : label is 1;
  attribute keep : string;
  attribute keep of m_axi_aclk : signal is "true";
  attribute keep of m_axi_aresetn : signal is "true";
  attribute keep of s_axi_aclk : signal is "true";
  attribute keep of s_axi_aresetn : signal is "true";
begin
  m_axi_aruser(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_clock_conv.gen_async_conv.asyncfifo_axi\: entity work.base_auto_cc_1_fifo_generator_v13_2_3
     port map (
      almost_empty => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_almost_empty_UNCONNECTED\,
      almost_full => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_almost_full_UNCONNECTED\,
      axi_ar_data_count(4 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_data_count_UNCONNECTED\(4 downto 0),
      axi_ar_dbiterr => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_dbiterr_UNCONNECTED\,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_overflow_UNCONNECTED\,
      axi_ar_prog_empty => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_prog_empty_UNCONNECTED\,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_prog_full_UNCONNECTED\,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_rd_data_count_UNCONNECTED\(4 downto 0),
      axi_ar_sbiterr => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_sbiterr_UNCONNECTED\,
      axi_ar_underflow => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_underflow_UNCONNECTED\,
      axi_ar_wr_data_count(4 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_wr_data_count_UNCONNECTED\(4 downto 0),
      axi_aw_data_count(4 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_data_count_UNCONNECTED\(4 downto 0),
      axi_aw_dbiterr => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_dbiterr_UNCONNECTED\,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_overflow_UNCONNECTED\,
      axi_aw_prog_empty => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_prog_empty_UNCONNECTED\,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_prog_full_UNCONNECTED\,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_rd_data_count_UNCONNECTED\(4 downto 0),
      axi_aw_sbiterr => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_sbiterr_UNCONNECTED\,
      axi_aw_underflow => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_underflow_UNCONNECTED\,
      axi_aw_wr_data_count(4 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_wr_data_count_UNCONNECTED\(4 downto 0),
      axi_b_data_count(4 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_data_count_UNCONNECTED\(4 downto 0),
      axi_b_dbiterr => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_dbiterr_UNCONNECTED\,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_overflow_UNCONNECTED\,
      axi_b_prog_empty => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_prog_empty_UNCONNECTED\,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_prog_full_UNCONNECTED\,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_rd_data_count_UNCONNECTED\(4 downto 0),
      axi_b_sbiterr => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_sbiterr_UNCONNECTED\,
      axi_b_underflow => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_underflow_UNCONNECTED\,
      axi_b_wr_data_count(4 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_wr_data_count_UNCONNECTED\(4 downto 0),
      axi_r_data_count(4 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_data_count_UNCONNECTED\(4 downto 0),
      axi_r_dbiterr => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_dbiterr_UNCONNECTED\,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_overflow_UNCONNECTED\,
      axi_r_prog_empty => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_prog_empty_UNCONNECTED\,
      axi_r_prog_empty_thresh(3 downto 0) => B"0000",
      axi_r_prog_full => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_prog_full_UNCONNECTED\,
      axi_r_prog_full_thresh(3 downto 0) => B"0000",
      axi_r_rd_data_count(4 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_rd_data_count_UNCONNECTED\(4 downto 0),
      axi_r_sbiterr => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_sbiterr_UNCONNECTED\,
      axi_r_underflow => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_underflow_UNCONNECTED\,
      axi_r_wr_data_count(4 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_wr_data_count_UNCONNECTED\(4 downto 0),
      axi_w_data_count(4 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_data_count_UNCONNECTED\(4 downto 0),
      axi_w_dbiterr => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_dbiterr_UNCONNECTED\,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_overflow_UNCONNECTED\,
      axi_w_prog_empty => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_prog_empty_UNCONNECTED\,
      axi_w_prog_empty_thresh(3 downto 0) => B"0000",
      axi_w_prog_full => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_prog_full_UNCONNECTED\,
      axi_w_prog_full_thresh(3 downto 0) => B"0000",
      axi_w_rd_data_count(4 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_rd_data_count_UNCONNECTED\(4 downto 0),
      axi_w_sbiterr => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_sbiterr_UNCONNECTED\,
      axi_w_underflow => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_underflow_UNCONNECTED\,
      axi_w_wr_data_count(4 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_wr_data_count_UNCONNECTED\(4 downto 0),
      axis_data_count(10 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_data_count_UNCONNECTED\(10 downto 0),
      axis_dbiterr => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_dbiterr_UNCONNECTED\,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_overflow_UNCONNECTED\,
      axis_prog_empty => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_prog_empty_UNCONNECTED\,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_prog_full_UNCONNECTED\,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_rd_data_count_UNCONNECTED\(10 downto 0),
      axis_sbiterr => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_sbiterr_UNCONNECTED\,
      axis_underflow => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_underflow_UNCONNECTED\,
      axis_wr_data_count(10 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_wr_data_count_UNCONNECTED\(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => '0',
      data_count(9 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_data_count_UNCONNECTED\(9 downto 0),
      dbiterr => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_dbiterr_UNCONNECTED\,
      din(17 downto 0) => B"000000000000000000",
      dout(17 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_dout_UNCONNECTED\(17 downto 0),
      empty => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_empty_UNCONNECTED\,
      full => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_full_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => m_axi_aclk,
      m_aclk_en => '1',
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arid(0) => m_axi_arid(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => m_axi_arregion(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_aruser(0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axi_aruser_UNCONNECTED\(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awid(0) => m_axi_awid(0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => m_axi_awregion(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awuser(0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axi_awuser_UNCONNECTED\(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => m_axi_bid(0),
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wid(0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axi_wid_UNCONNECTED\(0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      m_axi_wuser(0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axi_wuser_UNCONNECTED\(0),
      m_axi_wvalid => m_axi_wvalid,
      m_axis_tdata(7 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tdata_UNCONNECTED\(7 downto 0),
      m_axis_tdest(0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tdest_UNCONNECTED\(0),
      m_axis_tid(0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tid_UNCONNECTED\(0),
      m_axis_tkeep(0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tkeep_UNCONNECTED\(0),
      m_axis_tlast => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tlast_UNCONNECTED\,
      m_axis_tready => '0',
      m_axis_tstrb(0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tstrb_UNCONNECTED\(0),
      m_axis_tuser(3 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tuser_UNCONNECTED\(3 downto 0),
      m_axis_tvalid => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tvalid_UNCONNECTED\,
      overflow => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_overflow_UNCONNECTED\,
      prog_empty => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_prog_empty_UNCONNECTED\,
      prog_empty_thresh(9 downto 0) => B"0000000000",
      prog_empty_thresh_assert(9 downto 0) => B"0000000000",
      prog_empty_thresh_negate(9 downto 0) => B"0000000000",
      prog_full => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_prog_full_UNCONNECTED\,
      prog_full_thresh(9 downto 0) => B"0000000000",
      prog_full_thresh_assert(9 downto 0) => B"0000000000",
      prog_full_thresh_negate(9 downto 0) => B"0000000000",
      rd_clk => '0',
      rd_data_count(9 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_rd_data_count_UNCONNECTED\(9 downto 0),
      rd_en => '0',
      rd_rst => '0',
      rd_rst_busy => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_rd_rst_busy_UNCONNECTED\,
      rst => '0',
      s_aclk => s_axi_aclk,
      s_aclk_en => '1',
      s_aresetn => \gen_clock_conv.async_conv_reset_n\,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => s_axi_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_aruser(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => s_axi_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awuser(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_s_axi_buser_UNCONNECTED\(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_s_axi_ruser_UNCONNECTED\(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wid(0) => '0',
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid => s_axi_wvalid,
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_s_axis_tready_UNCONNECTED\,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_sbiterr_UNCONNECTED\,
      sleep => '0',
      srst => '0',
      underflow => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_underflow_UNCONNECTED\,
      valid => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_valid_UNCONNECTED\,
      wr_ack => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_wr_ack_UNCONNECTED\,
      wr_clk => '0',
      wr_data_count(9 downto 0) => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_wr_data_count_UNCONNECTED\(9 downto 0),
      wr_en => '0',
      wr_rst => '0',
      wr_rst_busy => \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_wr_rst_busy_UNCONNECTED\
    );
\gen_clock_conv.gen_async_conv.asyncfifo_axi_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => m_axi_aresetn,
      O => \gen_clock_conv.async_conv_reset_n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_auto_cc_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of base_auto_cc_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of base_auto_cc_1 : entity is "base_auto_cc_1,axi_clock_converter_v2_1_17_axi_clock_converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of base_auto_cc_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of base_auto_cc_1 : entity is "axi_clock_converter_v2_1_17_axi_clock_converter,Vivado 2018.3";
end base_auto_cc_1;

architecture STRUCTURE of base_auto_cc_1 is
  signal NLW_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ARADDR_RIGHT : integer;
  attribute C_ARADDR_RIGHT of inst : label is 29;
  attribute C_ARADDR_WIDTH : integer;
  attribute C_ARADDR_WIDTH of inst : label is 32;
  attribute C_ARBURST_RIGHT : integer;
  attribute C_ARBURST_RIGHT of inst : label is 16;
  attribute C_ARBURST_WIDTH : integer;
  attribute C_ARBURST_WIDTH of inst : label is 2;
  attribute C_ARCACHE_RIGHT : integer;
  attribute C_ARCACHE_RIGHT of inst : label is 11;
  attribute C_ARCACHE_WIDTH : integer;
  attribute C_ARCACHE_WIDTH of inst : label is 4;
  attribute C_ARID_RIGHT : integer;
  attribute C_ARID_RIGHT of inst : label is 61;
  attribute C_ARID_WIDTH : integer;
  attribute C_ARID_WIDTH of inst : label is 1;
  attribute C_ARLEN_RIGHT : integer;
  attribute C_ARLEN_RIGHT of inst : label is 21;
  attribute C_ARLEN_WIDTH : integer;
  attribute C_ARLEN_WIDTH of inst : label is 8;
  attribute C_ARLOCK_RIGHT : integer;
  attribute C_ARLOCK_RIGHT of inst : label is 15;
  attribute C_ARLOCK_WIDTH : integer;
  attribute C_ARLOCK_WIDTH of inst : label is 1;
  attribute C_ARPROT_RIGHT : integer;
  attribute C_ARPROT_RIGHT of inst : label is 8;
  attribute C_ARPROT_WIDTH : integer;
  attribute C_ARPROT_WIDTH of inst : label is 3;
  attribute C_ARQOS_RIGHT : integer;
  attribute C_ARQOS_RIGHT of inst : label is 0;
  attribute C_ARQOS_WIDTH : integer;
  attribute C_ARQOS_WIDTH of inst : label is 4;
  attribute C_ARREGION_RIGHT : integer;
  attribute C_ARREGION_RIGHT of inst : label is 4;
  attribute C_ARREGION_WIDTH : integer;
  attribute C_ARREGION_WIDTH of inst : label is 4;
  attribute C_ARSIZE_RIGHT : integer;
  attribute C_ARSIZE_RIGHT of inst : label is 18;
  attribute C_ARSIZE_WIDTH : integer;
  attribute C_ARSIZE_WIDTH of inst : label is 3;
  attribute C_ARUSER_RIGHT : integer;
  attribute C_ARUSER_RIGHT of inst : label is 0;
  attribute C_ARUSER_WIDTH : integer;
  attribute C_ARUSER_WIDTH of inst : label is 0;
  attribute C_AR_WIDTH : integer;
  attribute C_AR_WIDTH of inst : label is 62;
  attribute C_AWADDR_RIGHT : integer;
  attribute C_AWADDR_RIGHT of inst : label is 29;
  attribute C_AWADDR_WIDTH : integer;
  attribute C_AWADDR_WIDTH of inst : label is 32;
  attribute C_AWBURST_RIGHT : integer;
  attribute C_AWBURST_RIGHT of inst : label is 16;
  attribute C_AWBURST_WIDTH : integer;
  attribute C_AWBURST_WIDTH of inst : label is 2;
  attribute C_AWCACHE_RIGHT : integer;
  attribute C_AWCACHE_RIGHT of inst : label is 11;
  attribute C_AWCACHE_WIDTH : integer;
  attribute C_AWCACHE_WIDTH of inst : label is 4;
  attribute C_AWID_RIGHT : integer;
  attribute C_AWID_RIGHT of inst : label is 61;
  attribute C_AWID_WIDTH : integer;
  attribute C_AWID_WIDTH of inst : label is 1;
  attribute C_AWLEN_RIGHT : integer;
  attribute C_AWLEN_RIGHT of inst : label is 21;
  attribute C_AWLEN_WIDTH : integer;
  attribute C_AWLEN_WIDTH of inst : label is 8;
  attribute C_AWLOCK_RIGHT : integer;
  attribute C_AWLOCK_RIGHT of inst : label is 15;
  attribute C_AWLOCK_WIDTH : integer;
  attribute C_AWLOCK_WIDTH of inst : label is 1;
  attribute C_AWPROT_RIGHT : integer;
  attribute C_AWPROT_RIGHT of inst : label is 8;
  attribute C_AWPROT_WIDTH : integer;
  attribute C_AWPROT_WIDTH of inst : label is 3;
  attribute C_AWQOS_RIGHT : integer;
  attribute C_AWQOS_RIGHT of inst : label is 0;
  attribute C_AWQOS_WIDTH : integer;
  attribute C_AWQOS_WIDTH of inst : label is 4;
  attribute C_AWREGION_RIGHT : integer;
  attribute C_AWREGION_RIGHT of inst : label is 4;
  attribute C_AWREGION_WIDTH : integer;
  attribute C_AWREGION_WIDTH of inst : label is 4;
  attribute C_AWSIZE_RIGHT : integer;
  attribute C_AWSIZE_RIGHT of inst : label is 18;
  attribute C_AWSIZE_WIDTH : integer;
  attribute C_AWSIZE_WIDTH of inst : label is 3;
  attribute C_AWUSER_RIGHT : integer;
  attribute C_AWUSER_RIGHT of inst : label is 0;
  attribute C_AWUSER_WIDTH : integer;
  attribute C_AWUSER_WIDTH of inst : label is 0;
  attribute C_AW_WIDTH : integer;
  attribute C_AW_WIDTH of inst : label is 62;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 1;
  attribute C_AXI_IS_ACLK_ASYNC : integer;
  attribute C_AXI_IS_ACLK_ASYNC of inst : label is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of inst : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_BID_RIGHT : integer;
  attribute C_BID_RIGHT of inst : label is 2;
  attribute C_BID_WIDTH : integer;
  attribute C_BID_WIDTH of inst : label is 1;
  attribute C_BRESP_RIGHT : integer;
  attribute C_BRESP_RIGHT of inst : label is 0;
  attribute C_BRESP_WIDTH : integer;
  attribute C_BRESP_WIDTH of inst : label is 2;
  attribute C_BUSER_RIGHT : integer;
  attribute C_BUSER_RIGHT of inst : label is 0;
  attribute C_BUSER_WIDTH : integer;
  attribute C_BUSER_WIDTH of inst : label is 0;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of inst : label is 3;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute C_FIFO_AR_WIDTH : integer;
  attribute C_FIFO_AR_WIDTH of inst : label is 62;
  attribute C_FIFO_AW_WIDTH : integer;
  attribute C_FIFO_AW_WIDTH of inst : label is 62;
  attribute C_FIFO_B_WIDTH : integer;
  attribute C_FIFO_B_WIDTH of inst : label is 3;
  attribute C_FIFO_R_WIDTH : integer;
  attribute C_FIFO_R_WIDTH of inst : label is 68;
  attribute C_FIFO_W_WIDTH : integer;
  attribute C_FIFO_W_WIDTH of inst : label is 73;
  attribute C_M_AXI_ACLK_RATIO : integer;
  attribute C_M_AXI_ACLK_RATIO of inst : label is 2;
  attribute C_RDATA_RIGHT : integer;
  attribute C_RDATA_RIGHT of inst : label is 3;
  attribute C_RDATA_WIDTH : integer;
  attribute C_RDATA_WIDTH of inst : label is 64;
  attribute C_RID_RIGHT : integer;
  attribute C_RID_RIGHT of inst : label is 67;
  attribute C_RID_WIDTH : integer;
  attribute C_RID_WIDTH of inst : label is 1;
  attribute C_RLAST_RIGHT : integer;
  attribute C_RLAST_RIGHT of inst : label is 0;
  attribute C_RLAST_WIDTH : integer;
  attribute C_RLAST_WIDTH of inst : label is 1;
  attribute C_RRESP_RIGHT : integer;
  attribute C_RRESP_RIGHT of inst : label is 1;
  attribute C_RRESP_WIDTH : integer;
  attribute C_RRESP_WIDTH of inst : label is 2;
  attribute C_RUSER_RIGHT : integer;
  attribute C_RUSER_RIGHT of inst : label is 0;
  attribute C_RUSER_WIDTH : integer;
  attribute C_RUSER_WIDTH of inst : label is 0;
  attribute C_R_WIDTH : integer;
  attribute C_R_WIDTH of inst : label is 68;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of inst : label is 3;
  attribute C_S_AXI_ACLK_RATIO : integer;
  attribute C_S_AXI_ACLK_RATIO of inst : label is 1;
  attribute C_WDATA_RIGHT : integer;
  attribute C_WDATA_RIGHT of inst : label is 9;
  attribute C_WDATA_WIDTH : integer;
  attribute C_WDATA_WIDTH of inst : label is 64;
  attribute C_WID_RIGHT : integer;
  attribute C_WID_RIGHT of inst : label is 73;
  attribute C_WID_WIDTH : integer;
  attribute C_WID_WIDTH of inst : label is 0;
  attribute C_WLAST_RIGHT : integer;
  attribute C_WLAST_RIGHT of inst : label is 0;
  attribute C_WLAST_WIDTH : integer;
  attribute C_WLAST_WIDTH of inst : label is 1;
  attribute C_WSTRB_RIGHT : integer;
  attribute C_WSTRB_RIGHT of inst : label is 1;
  attribute C_WSTRB_WIDTH : integer;
  attribute C_WSTRB_WIDTH of inst : label is 8;
  attribute C_WUSER_RIGHT : integer;
  attribute C_WUSER_RIGHT of inst : label is 0;
  attribute C_WUSER_WIDTH : integer;
  attribute C_WUSER_WIDTH of inst : label is 0;
  attribute C_W_WIDTH : integer;
  attribute C_W_WIDTH of inst : label is 73;
  attribute P_ACLK_RATIO : integer;
  attribute P_ACLK_RATIO of inst : label is 2;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_FULLY_REG : integer;
  attribute P_FULLY_REG of inst : label is 1;
  attribute P_LIGHT_WT : integer;
  attribute P_LIGHT_WT of inst : label is 0;
  attribute P_LUTRAM_ASYNC : integer;
  attribute P_LUTRAM_ASYNC of inst : label is 12;
  attribute P_ROUNDING_OFFSET : integer;
  attribute P_ROUNDING_OFFSET of inst : label is 0;
  attribute P_SI_LT_MI : string;
  attribute P_SI_LT_MI of inst : label is "1'b1";
  attribute downgradeipidentifiedwarnings of inst : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axi_aclk : signal is "xilinx.com:signal:clock:1.0 MI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axi_aclk : signal is "XIL_INTERFACENAME MI_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN base_ps7_0_0_FCLK_CLK1, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETN, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 MI_RST RST";
  attribute X_INTERFACE_PARAMETER of m_axi_aresetn : signal is "XIL_INTERFACENAME MI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 128, PHASE 0.000, CLK_DOMAIN base_ps7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 SI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME SI_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN base_ps7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 SI_RST RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME SI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 128, PHASE 0.000, CLK_DOMAIN base_ps7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arregion : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREGION";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREGION";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARQOS";
  attribute X_INTERFACE_INFO of s_axi_arregion : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREGION";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREGION";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
inst: entity work.base_auto_cc_1_axi_clock_converter_v2_1_17_axi_clock_converter
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_aresetn => m_axi_aresetn,
      m_axi_arid(0) => NLW_inst_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => m_axi_arregion(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awid(0) => NLW_inst_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => m_axi_awregion(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => '0',
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => '0',
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wid(0) => NLW_inst_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => s_axi_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_aruser(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => s_axi_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awuser(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wid(0) => '0',
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
