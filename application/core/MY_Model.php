<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class MY_Model extends CI_Model{
	public $table_name;
		
	private $user_info = FALSE;
	
	public function __construct(){
		parent::__construct();
	}

	/**
	 * Get status list.
	 *
	 * @return array
	 */
	public function get_active_list(){
		return $this->active_list;
	}

	/**
	 * Get value by key.
	 *
	 * @return string
	 */
	public function get_value_by_key($key, $list){
		return isset($list[$key])?$list[$key]:"";
	}

	/**
	 * Get url_target list.
	 *
	 * @return array
	 */
	public function get_url_target_list(){
		return $this->url_target_list;
	}

	/**
	 * Get position_list name by position_list id.
	 *
	 * @return string
	 */
	public function get_position_list(){
		return $this->position_list;
	}

	/**
	 * Fetch all records.
	 *
	 * @return type
	 */
	public function fetch_all()
	{
		$query = $this->db->get($this->table_name);
		return $query->result();
	}

	/**
	 * Paginate results.
	 *
	 * @param type $offset
	 * @param type $limit
	 * @return type
	 */
	public function paginate($limit = 10, $offset = 0)
	{
		$data = array();
		$this->db->limit($limit, $offset);
		$query = $this->db->get($this->table_name);

		return $query->result();
	}

	/**
	 * Find record by id.
	 *
	 * @param type $id
	 * @return type
	 */
	public function find_by($where = NULL, $select = "*", $is_single_result = FALSE, $order_by=NULL, $limit = NULL)
	{	
		$this->db->select($select);	

		if(isset($limit)) {
			$this->db->limit($limit);
		}

		if($order_by!=NULL){
			$query = $this->db->order_by($order_by['key'], $order_by['value']);
		}
		if(isset($where)){
			$query = $this->db->get_where($this->table_name, $where);
		}else{
			$query = $this->db->get($this->table_name);
		}
		$result =  $is_single_result ? $query->row() : $query->result();

        return $result;
	}

	/**
	*	Hàm find chỉ có 1 tham số duy nhất, tham số sẽ chứa các statements cần sử dụng
	* Ex: array( 
	*		'select' => 'news.id, news.title, category.title as cat_title',
	*		'where'	 => array('key1'=>'value1', 'key2'=>'value2'),
	*		'where_in' => array('news.id'=>array(22,23,24)),
	*		'or_where'	=> array('news.id' => 25),
	*		//'limit'	=> 5,
	*		//'offset' => 2,
	*		'join'	=> array('category' => 'news.category_id=category.id'),
	*		//'count'	=> TRUE,
	*		'order_by' => array('news.id' => 'desc')
	*	);
	**/

	public function find($params = array()){
		$_sql_params = array(
			'where' 		=> NULL,
			'where_in'		=> NULL,
			'or_where'		=> NULL,
			'or_where_in'	=> NULL,
			'where_not_in'	=> NULL,
			'like'			=> NULL,
			'or_like'		=> NULL,
			'select'		=> '*',
			'order_by'		=> NULL,
			'limit'			=> NULL,
			'offset'		=> NULL,
			'join'			=> NULL,
			'join_opt'		=> NULL,
			'group_by'		=> NULL,
			'having'		=> NULL,
			'count'			=> FALSE,
			'one'			=> FALSE,
			'all'			=> TRUE,
			'to_array'		=> FALSE
		);
		
		$_sql_params = array_merge($_sql_params,$params);
		
		foreach($_sql_params as $key=>$_item){
			$$key = $_item;
		}

		//SELECT
		if(isset($select)){ 
			$this->db->select($select); 
		}

		//FROM
		$this->db->from($this->table_name);

		//JOIN
		if(isset($join) && is_array($join)){
			foreach ($join as $key => $value) {
				$this->db->join($key, $value);
			}
		}	

		//WHERE (STRING/ARRAY)
		if(isset($where)){
			if(is_string($where)){
				$this->db->where($where);
			} else {
				foreach ($where as $key => $value) {
					$this->db->where($key, $value);
				}
			}			
		}

		//WHERE IN
		if(isset($where_in)){
			foreach ($where_in as $key => $value) {
				$this->db->where_in($key, $value);
			}			
		}

		//OR WHERE
		if(isset($or_where)){
			foreach ($or_where as $key => $value) {
				$this->db->or_where($key, $value);
			}			
		}

		//OR WHERE IN
		if(isset($or_where_in)){
			foreach ($or_where_in as $key => $value) {
				$this->db->or_where_in($key, $value);
			}			
		}

		//where_not_in
		if(isset($where_not_in)){
			foreach ($where_not_in as $key => $value) {
				$this->db->where_not_in($key, $value);
			}			
		}

		//LIKE
		if(isset($like)){
			foreach ($like as $key => $value) {
				$this->db->like($key, $value);
			}			
		}

		//OR_LIKE
		if(isset($or_like)){
			foreach ($or_like as $key => $value) {
				$this->db->or_like($key, $value);
			}			
		}

		//GROUP BY
		if(isset($group_by)){
			$this->db->group_by($group_by);
		}

		//HAVING (STRING/ARRAY)
		if(isset($having)){
			if(is_string($having)){
				$this->db->having($having);
			} else {
				foreach ($having as $key => $value) {
					$this->db->having($key, $value);
				}
			}			
		}

		//ORDER BY (STRING/ARRAY)
		if(isset($order_by)){
			if(is_string($order_by)){
				$this->db->order_by($order_by);
			} else {
				foreach($order_by as $key=>$value){
					$this->db->order_by($key, $value);
				}
			}
		}

		//LIMIT/OFFSET
		if(isset($limit)){
			if(isset($offset)){
				$this->db->limit($limit, $offset);
			} else {
				$this->db->limit($limit);
			}
		}

		//RESULT
		if($count == TRUE){
			$result = $this->db->count_all_results();
		} else {
			$query = $this->db->get();
			if($one == TRUE){
				$result = $query->row();
			} elseif($all == TRUE) {
				if($to_array == TRUE){
					$result = $query->result_array();
				} else {
					$result = $query->result();
				}				
			} else {
				$result = $query;
			}
		}
		
		/*//join + option join
		if($join_opt != NULL && is_array($join_opt)){
			foreach ($join_opt as $_join) {
				$this->db->join($_join[0], $_join[1], $_join[2]);
			}
		}		*/		
		
		return $result;
	}
	
	public function count_by($condition = FALSE) {				
		if($condition) {
			$this->db->where($condition);
		}
		
		$this->db->from($this->table_name);
		return $this->db->count_all_results();
	}

	/**
	 * Abstract record creation.
	 *
	 * @param array $data
	 * @return type
	 */
	public function create($data)
	{
		$this->db->insert($this->table_name, $data);
		return $this->db->insert_id();
	}

	/**
	 * Abstract recort update.
	 *
	 * @param array $data
	 * @param type $id
	 */
	public function update($data, $id)
	{
		$this->db->update($this->table_name, $data, array('id' => $id));
	}

	/**
	 * Abstract record deletion.
	 *
	 * @param type $id
	 */
	public function delete($data)
	{
		$this->db->delete($this->table_name, $data);
		//     echo $this->db->last_query();
		//     exit();
	}

	/**
	 * Utiltiy method to create a UUID.
	 *
	 * @return type
	 */
	protected function create_uuid()
	{
		$uuid_query = $this->db->query('SELECT UUID()');
		$uuid_rs = $uuid_query->result_array();
		return $uuid_rs[0]['UUID()'];
	}

	public function count() {
		return $this->db->count_all($this->table_name);
	}

	public function get_for_dropdownlist($id, $field)
	{
		$data = array();
		$query = $this->db->get($this->table_name);

		if ($query->num_rows() > 0)
		{
			foreach ($query->result() as $row)
			{
				$data[$row->$id] = $row->$field;
			}
		}

		return $data;
	}

	/**
	 * check code exists and rebuild code
	 * return string
	 */
	public function extract_code(&$code, $orginal_code){
		$obj_query = $this->find_by(array('code' => $orginal_code), "id");
		if(isset($obj_query[0])){
			$this->extract_code($code, $orginal_code.$this->lang->line('code_suffix'));
		}else{
			$code = $orginal_code;
		}
	}

	public function last_id() {
		return $this->db->query("SELECT LAST_INSERT_ID() AS ID")->row();
	}

	public function has_right_code($user_id, $role_code, $permission_code){
		$role_list = $this->get_role_list($user_id);
		if(isset($role_list['code'][$role_code]) && in_array($permission_code, $role_list['code'][$role_code])){
			return TRUE;
		}else{
			return FALSE;
		}
	}
	
	public function get_user_info($user_id){
		if($this->user_info === FALSE){
			$this->db->select('users.username, users.group_id, groupright.role_id, groupright.permission_id, role.code as role_code, permission.code as permission_code');
			$this->db->from('users');
			$this->db->join('groups', 'users.group_id = groups.id');
			$this->db->join('groupright', 'groups.id = groupright.group_id');
			$this->db->join('role', 'role.id = groupright.role_id');
			$this->db->join('permission', 'permission.id = groupright.permission_id');
			$this->db->where('users.id', $user_id);
			$query = $this->db->get();

			$role_list = array();
			$user_info = FALSE;
			foreach($query->result() as $item){
				$user_info['role_list']['code'][$item->role_code][] 	= $item->permission_code;
				$user_info['role_list']['id'][$item->role_id][] 	  	= $item->permission_id;
				$user_info['username']									= $item->username;
				$user_info['group_id']									= $item->group_id;
			}
			$this->set_user_info($user_info);
			return $user_info;
		}else{
			return $this->user_info;
		}
	}
	
	public function get_group_id($user_id=FALSE){
		if($user_id===FALSE){
			$user_id   = $this->get_user_id();
		}		
		$user_info = $this->get_user_info($user_id);
		return $user_info['group_id'];
	}
	
	public function set_user_info($user_info){
		return $this->user_info = $user_info;
	}
	
	public function get_role_list($user_id){
		if(!isset($this->user_info['role_list'])){
			$user_info = $this->get_user_info($user_id);
			return $user_info['role_list'];			
		}		
		return $this->user_info['role_list'];
	}
	
	/**
	 * Get user session data.
	 *
	 * @return type
	 */
	public function get_user_data(){
		return $this->session->all_userdata();
	}

	/**
	 * Get logged in user id.
	 *
	 * @return type
	 */
	public function get_user_id(){
		$session_data = $this->session->all_userdata();
		return $session_data['user_id'];
	}

	/**
	 * Get logged in username.
	 *
	 * @return string
	 */
	public function get_username($user_id=FALSE){
		
		if($user_id===FALSE){
			$user_id = $this->get_user_id();
		}
		
		if(!isset($this->user_info['username'])){
			$user_info = $this->get_user_info($user_id);
			if(isset($user_info['username'])){
				return $user_info['username'];
			}
			return '';
		}else{
			return $this->user_info['username'];
		}
		
	}

	private function stdclass_to_array($stdclass){
		$array = array();
		if(is_array($stdclass)){
			return $stdclass;
		}
		if(is_object($stdclass)){
			foreach($stdclass as $k=>$item){
				$array[$k] = $item;
			}
		}
		return $array;
	}

	protected function add_button($controller, $item){
		$button = '<div class="btn-group">';
			$button .= '<button class="btn">Chức Năng</button>';
			$button .= '<button data-toggle="dropdown" class="btn dropdown-toggle">';
				$button .= '<span class="caret"></span>';
			$button .= '</button>';
			$button .= '<ul class="dropdown-menu">';
				$button .= '<li><a href="'.site_url('admin/'.$controller.'/index/update/'.$item['id']).'"><i class="icon-pencil"></i> Sửa</a> </li>';
				$button .= '<li><a data-toggle="modal" href="#delete_confirm" onclick="delete_confirm(\''.site_url('admin/'.$controller.'/index/delete/'.$item['id']).'\')"><i class="icon-remove"></i>Xóa</a></li>';
			$button .= '</ul>';
		$button .= '</div>';
		return $button;
	}
}