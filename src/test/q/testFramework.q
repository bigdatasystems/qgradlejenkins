runTest1:{[]
   -1 string[.z.p], " running test 1";
   -1 string[.z.p], " completed test 1";
   ([]ran:enlist 1b; time:enlist 00:00:05; pass:enlist 1b; error:enlist 0b; errorMsg:enlist "none")
   };
   
runTest2:{[]
   -1 string[.z.p], " running test 2";
   -2 "Test failed: Expected 1: Actual 2";
   -1 string[.z.p], " completed test";
   ([]ran:enlist 1b; time:enlist 00:00:01; pass:enlist 0b; error:enlist 0b; errorMsg:enlist "none")
   };
   

runTests:{[]
   res1:runTest1[];
   res2:runTest2[];
   raze res1,res2
   };
   
runTests[];
exit 0;
   