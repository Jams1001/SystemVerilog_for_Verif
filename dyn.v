module array_reorder;
  
  int array[20]; // Fixed-size array capable of storing 20 elements
  int array_order[$]; // Queue for reordering array elements
  
  initial begin
    // Add random values to the fixed-size array
    foreach (array[i]) begin
      array[i] = $urandom_range(1, 100);
    end
  
    // Reorder the fixed-size array and add elements to the Queue
    for (int i = 19; i >= 0; i--) begin
      array_order.push_back(array[i]);
    end
  
    // Print all the elements of the fixed-size array and the Queue
    $display("Fixed-Size Array:");
    foreach (array[i]) begin
      $display("array[%0d] = %0d", i, array[i]);
    end
  
    $display("\nQueue:");
    foreach (array_order[i]) begin
      $display("array_order[%0d] = %0d", i, array_order[i]);
    end
  end
endmodule
