module system (
   input clk,
   input btns,
   output Led
);

wire rst_n;
reg [25:0] counter;


always @(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        counter <= 0;
    end else begin
        counter <= counter + 1;
    end
end

assign Led = counter[25];
assign rst_n = ~btns;

endmodule
