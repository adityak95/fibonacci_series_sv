class fibo;
  rand int fibo_series[$];
  
  constraint fb_c{
    fibo_series.size()==19;
    foreach(fibo_series[i]){
      if(i==0) fibo_series[i]==0;
      else if(i==1) fibo_series[i]==1;
      else fibo_series[i]==fibo_series[i-1]+fibo_series[i-2];
    }
  }
  	
endclass
      
      
module top;
  fibo f;
  initial begin
    f=new();
    repeat(10)begin
    assert(f.randomize());
    end
    $display("fibo_series=%p",f.fibo_series);
  end
endmodule
