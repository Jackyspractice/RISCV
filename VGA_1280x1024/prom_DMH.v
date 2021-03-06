module prom_DMH (
    input wire [4:0] addr,
    output wire [0:37] M
);

reg [0:37] rom [0:39];

parameter data = {
   38'b00000000000000001111111100000000000000,
   38'b00000000000001111111111111100000000000,
   38'b00000000000111111111111111111000000000,
   38'b00000000011111111111111111111110000000,
   38'b00000000111111111111111111111111000000,
   38'b00000011111111111111111111111111100000,
   38'b00000111111111111111111111111111110000,
   38'b00000111111111111111111111111111111000,
   38'b00001111111111111111111111111111111100,
   38'b00011111111111111111111111111111111110,
   38'b00111111111111111111111111111111111110,
   38'b00111111111111111111111111111111111110,
   38'b00111111111111111111111111111111111100,
   38'b01111111111111111111111111111111110000,
   38'b01111111111111111111111111111111000000,
   38'b01111111111111111111111111111100000000,
   38'b11111111111111111111111111110000000000,
   38'b11111111111111111111111111000000000000,
   38'b11111111111111111111111100000000000000,
   38'b11111111111111111111110000000000000000,
   38'b11111111111111111111100000000000000000,
   38'b11111111111111111111111000000000000000,
   38'b11111111111111111111111110000000000000,
   38'b11111111111111111111111111100000000000,
   38'b01111111111111111111111111111000000000,
   38'b01111111111111111111111111111110000000,
   38'b01111111111111111111111111111111100000,
   38'b01111111111111111111111111111111111000,
   38'b00111111111111111111111111111111111110,
   38'b00111111111111111111111111111111111110,
   38'b00011111111111111111111111111111111110,
   38'b00001111111111111111111111111111111100,
   38'b00001111111111111111111111111111111000,
   38'b00000111111111111111111111111111111000,
   38'b00000011111111111111111111111111110000,
   38'b00000001111111111111111111111111000000,
   38'b00000000011111111111111111111110000000,
   38'b00000000001111111111111111111000000000,
   38'b00000000000011111111111111100000000000,
   38'b00000000000000001111111100000000000000
};

integer i;

initial 
    begin
        for ( i = 0; i < 40; i = i + 1)
            rom[i] = data [(1519 - 38 * i) -: 38];
    end

assign M = rom[addr];
endmodule