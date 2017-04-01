<?php


class Parts extends MY_Model {
    
    public function __construct()
    {
         parent::__construct('Parts', 'id');
    }
	
	// provide form validation rules
    public function rules()
    {
        $config = array(
			//['field' => 'id', 'label' => 'ID', 'rules' => 'integer|max_length[8]'],
            ['field' => 'ca', 'label' => 'Certificates', 'rules' => 'string|max_length[8]'],
            ['field' => 'plate', 'label' => 'Manufacturer', 'rules' => 'string|less_than[20]'],
            ['field' => 'type', 'label' => 'Type', 'rules' => 'string|less_than[20]'],
            ['field' => 'date', 'label' => 'Mfg. Date', 'rules' => 'date'],
            ['field' => 'unitprice', 'label' => 'Unit Price', 'rules' => 'integer|less_than[5]'],
			['field' => 'pic', 'label' => 'Picture', 'rules' => 'string|less_than[20]'],
        );
        return $config;
    }
	
	public function getAllParts() {
		return $this->all();
	}
	
	// retrieve a single part's detail
	public function getPartDetail($which)
	{
		$tempParts = array();
		foreach($this->all() as $singlePart) {
			if($singlePart->ca == $which) {
				$tempParts = array('pic' => $singlePart->pic, 
								'ca' => $singlePart -> ca,
								'plate' => $singlePart -> plant,
								'type' => $singlePart -> type,
								'date' => $singlePart -> date,
								'unitprice' => $singlePart -> unitprice);
				return $tempParts;
			}
		}
		return null;
	}
	
	//retrieve part's pic by ca
	public function getPicByCA($which) {
            foreach ($this->all() as $record)
            {
                if ($record->ca == $which){
                    return $record->pic;
                }
            }
            return null;
        
	}
	
	//get parts by type
	public function getType($which){
        $partArray = array ();
        foreach ($this->all() as $record)
        {
            if ($record->type == $which){
                $partArray[] = array (
                    'pic' => $record->pic,
                    'link' => $record->id );
            }	
        }
		return $partArray;
    }
	
	//get how many parts we have
	public function count(){
        return sizeof($this->all());
    }
	
}