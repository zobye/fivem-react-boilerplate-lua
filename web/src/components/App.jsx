import { useState } from "react";

import { fetchNui } from "../utils/fetchNui";

// This will set the NUI to visible if we are
// developing in browser

// import { debugData } from "../utils/debugData";
// debugData([
//   {
//     action: "setVisible",
//     data: true,
//   },
// ]);

const App = () => {
  const [clientData, setClientData] = useState(null);

  const handleGetClientData = () => {
    fetchNui("getClientData")
      .then((retData) => {
        setClientData(retData);
      })
  };

  return (
    <div className="text-red-500">
      {clientData?.x}
      <button onClick={handleGetClientData}>Click</button>
    </div>
  );
};

export default App;