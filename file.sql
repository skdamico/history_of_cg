<?xml version="1.0"?>
<mysqldump xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<database name="historyofcg_prod">
	<table_structure name="acos">
		<field Field="id" Type="int(10) unsigned" Null="NO" Key="PRI" Extra="auto_increment" />
		<field Field="parent_id" Type="int(10)" Null="YES" Key="" Extra="" />
		<field Field="model" Type="varchar(255)" Null="YES" Key="" Default="" Extra="" />
		<field Field="foreign_key" Type="int(10) unsigned" Null="YES" Key="" Extra="" />
		<field Field="alias" Type="varchar(255)" Null="YES" Key="" Default="" Extra="" />
		<field Field="lft" Type="int(10)" Null="YES" Key="" Extra="" />
		<field Field="rght" Type="int(10)" Null="YES" Key="" Extra="" />
		<key Table="acos" Non_unique="0" Key_name="PRIMARY" Seq_in_index="1" Column_name="id" Collation="A" Cardinality="54" Null="" Index_type="BTREE" Comment="" />
		<options Name="acos" Engine="InnoDB" Version="10" Row_format="Compact" Rows="54" Avg_row_length="303" Data_length="16384" Max_data_length="0" Index_length="0" Data_free="10485760" Auto_increment="74" Create_time="2012-04-10 01:59:50" Collation="latin1_swedish_ci" Create_options="" Comment="" />
	</table_structure>
	<table_data name="acos">
	<row>
		<field name="id">1</field>
		<field name="parent_id" xsi:nil="true" />
		<field name="model"></field>
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">controllers</field>
		<field name="lft">1</field>
		<field name="rght">108</field>
	</row>
	<row>
		<field name="id">2</field>
		<field name="parent_id">1</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">About</field>
		<field name="lft">2</field>
		<field name="rght">7</field>
	</row>
	<row>
		<field name="id">3</field>
		<field name="parent_id">1</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">Entries</field>
		<field name="lft">8</field>
		<field name="rght">27</field>
	</row>
	<row>
		<field name="id">4</field>
		<field name="parent_id">1</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">Groups</field>
		<field name="lft">28</field>
		<field name="rght">41</field>
	</row>
	<row>
		<field name="id">5</field>
		<field name="parent_id">4</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">index</field>
		<field name="lft">29</field>
		<field name="rght">30</field>
	</row>
	<row>
		<field name="id">6</field>
		<field name="parent_id">4</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">view</field>
		<field name="lft">31</field>
		<field name="rght">32</field>
	</row>
	<row>
		<field name="id">7</field>
		<field name="parent_id">4</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">add</field>
		<field name="lft">33</field>
		<field name="rght">34</field>
	</row>
	<row>
		<field name="id">8</field>
		<field name="parent_id">4</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">edit</field>
		<field name="lft">35</field>
		<field name="rght">36</field>
	</row>
	<row>
		<field name="id">9</field>
		<field name="parent_id">4</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">delete</field>
		<field name="lft">37</field>
		<field name="rght">38</field>
	</row>
	<row>
		<field name="id">10</field>
		<field name="parent_id">1</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">Home</field>
		<field name="lft">42</field>
		<field name="rght">47</field>
	</row>
	<row>
		<field name="id">11</field>
		<field name="parent_id">10</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">index</field>
		<field name="lft">43</field>
		<field name="rght">44</field>
	</row>
	<row>
		<field name="id">12</field>
		<field name="parent_id">1</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">Sessions</field>
		<field name="lft">48</field>
		<field name="rght">55</field>
	</row>
	<row>
		<field name="id">13</field>
		<field name="parent_id">12</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">create</field>
		<field name="lft">49</field>
		<field name="rght">50</field>
	</row>
	<row>
		<field name="id">14</field>
		<field name="parent_id">12</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">destroy</field>
		<field name="lft">51</field>
		<field name="rght">52</field>
	</row>
	<row>
		<field name="id">15</field>
		<field name="parent_id">1</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">Users</field>
		<field name="lft">56</field>
		<field name="rght">73</field>
	</row>
	<row>
		<field name="id">16</field>
		<field name="parent_id">15</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">signup</field>
		<field name="lft">57</field>
		<field name="rght">58</field>
	</row>
	<row>
		<field name="id">17</field>
		<field name="parent_id">15</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">index</field>
		<field name="lft">59</field>
		<field name="rght">60</field>
	</row>
	<row>
		<field name="id">18</field>
		<field name="parent_id">15</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">view</field>
		<field name="lft">61</field>
		<field name="rght">62</field>
	</row>
	<row>
		<field name="id">19</field>
		<field name="parent_id">15</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">add</field>
		<field name="lft">63</field>
		<field name="rght">64</field>
	</row>
	<row>
		<field name="id">20</field>
		<field name="parent_id">15</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">edit</field>
		<field name="lft">65</field>
		<field name="rght">66</field>
	</row>
	<row>
		<field name="id">21</field>
		<field name="parent_id">15</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">delete</field>
		<field name="lft">67</field>
		<field name="rght">68</field>
	</row>
	<row>
		<field name="id">22</field>
		<field name="parent_id">1</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">AclExtras</field>
		<field name="lft">74</field>
		<field name="rght">75</field>
	</row>
	<row>
		<field name="id">24</field>
		<field name="parent_id">3</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">view</field>
		<field name="lft">9</field>
		<field name="rght">10</field>
	</row>
	<row>
		<field name="id">25</field>
		<field name="parent_id">3</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">add</field>
		<field name="lft">11</field>
		<field name="rght">12</field>
	</row>
	<row>
		<field name="id">26</field>
		<field name="parent_id">3</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">edit</field>
		<field name="lft">13</field>
		<field name="rght">14</field>
	</row>
	<row>
		<field name="id">27</field>
		<field name="parent_id">15</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">initDB</field>
		<field name="lft">69</field>
		<field name="rght">70</field>
	</row>
	<row>
		<field name="id">28</field>
		<field name="parent_id">1</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">Tags</field>
		<field name="lft">76</field>
		<field name="rght">81</field>
	</row>
	<row>
		<field name="id">29</field>
		<field name="parent_id">28</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">fetch</field>
		<field name="lft">77</field>
		<field name="rght">78</field>
	</row>
	<row>
		<field name="id">30</field>
		<field name="parent_id">3</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">get</field>
		<field name="lft">15</field>
		<field name="rght">16</field>
	</row>
	<row>
		<field name="id">31</field>
		<field name="parent_id">3</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">saveTags</field>
		<field name="lft">17</field>
		<field name="rght">18</field>
	</row>
	<row>
		<field name="id">42</field>
		<field name="parent_id">1</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">Stories</field>
		<field name="lft">82</field>
		<field name="rght">91</field>
	</row>
	<row>
		<field name="id">43</field>
		<field name="parent_id">42</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">get</field>
		<field name="lft">83</field>
		<field name="rght">84</field>
	</row>
	<row>
		<field name="id">44</field>
		<field name="parent_id">42</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">add_or_edit</field>
		<field name="lft">85</field>
		<field name="rght">86</field>
	</row>
	<row>
		<field name="id">51</field>
		<field name="parent_id">3</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">get_by_phrase</field>
		<field name="lft">19</field>
		<field name="rght">20</field>
	</row>
	<row>
		<field name="id">52</field>
		<field name="parent_id">1</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">Connections</field>
		<field name="lft">92</field>
		<field name="rght">101</field>
	</row>
	<row>
		<field name="id">53</field>
		<field name="parent_id">52</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">saveTags</field>
		<field name="lft">93</field>
		<field name="rght">94</field>
	</row>
	<row>
		<field name="id">54</field>
		<field name="parent_id">52</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">add</field>
		<field name="lft">95</field>
		<field name="rght">96</field>
	</row>
	<row>
		<field name="id">57</field>
		<field name="parent_id">52</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">delete</field>
		<field name="lft">97</field>
		<field name="rght">98</field>
	</row>
	<row>
		<field name="id">58</field>
		<field name="parent_id">42</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">delete</field>
		<field name="lft">87</field>
		<field name="rght">88</field>
	</row>
	<row>
		<field name="id">59</field>
		<field name="parent_id">3</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">not_found</field>
		<field name="lft">21</field>
		<field name="rght">22</field>
	</row>
	<row>
		<field name="id">60</field>
		<field name="parent_id">2</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">index</field>
		<field name="lft">3</field>
		<field name="rght">4</field>
	</row>
	<row>
		<field name="id">61</field>
		<field name="parent_id">2</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">create_slug</field>
		<field name="lft">5</field>
		<field name="rght">6</field>
	</row>
	<row>
		<field name="id">62</field>
		<field name="parent_id">52</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">create_slug</field>
		<field name="lft">99</field>
		<field name="rght">100</field>
	</row>
	<row>
		<field name="id">63</field>
		<field name="parent_id">3</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">not_published</field>
		<field name="lft">23</field>
		<field name="rght">24</field>
	</row>
	<row>
		<field name="id">64</field>
		<field name="parent_id">3</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">create_slug</field>
		<field name="lft">25</field>
		<field name="rght">26</field>
	</row>
	<row>
		<field name="id">65</field>
		<field name="parent_id">4</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">create_slug</field>
		<field name="lft">39</field>
		<field name="rght">40</field>
	</row>
	<row>
		<field name="id">66</field>
		<field name="parent_id">10</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">create_slug</field>
		<field name="lft">45</field>
		<field name="rght">46</field>
	</row>
	<row>
		<field name="id">67</field>
		<field name="parent_id">1</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">Search</field>
		<field name="lft">102</field>
		<field name="rght">107</field>
	</row>
	<row>
		<field name="id">68</field>
		<field name="parent_id">67</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">index</field>
		<field name="lft">103</field>
		<field name="rght">104</field>
	</row>
	<row>
		<field name="id">69</field>
		<field name="parent_id">67</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">create_slug</field>
		<field name="lft">105</field>
		<field name="rght">106</field>
	</row>
	<row>
		<field name="id">70</field>
		<field name="parent_id">12</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">create_slug</field>
		<field name="lft">53</field>
		<field name="rght">54</field>
	</row>
	<row>
		<field name="id">71</field>
		<field name="parent_id">42</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">create_slug</field>
		<field name="lft">89</field>
		<field name="rght">90</field>
	</row>
	<row>
		<field name="id">72</field>
		<field name="parent_id">28</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">create_slug</field>
		<field name="lft">79</field>
		<field name="rght">80</field>
	</row>
	<row>
		<field name="id">73</field>
		<field name="parent_id">15</field>
		<field name="model" xsi:nil="true" />
		<field name="foreign_key" xsi:nil="true" />
		<field name="alias">create_slug</field>
		<field name="lft">71</field>
		<field name="rght">72</field>
	</row>
	</table_data>
	<table_structure name="aros">
		<field Field="id" Type="int(10) unsigned" Null="NO" Key="PRI" Extra="auto_increment" />
		<field Field="parent_id" Type="int(10)" Null="YES" Key="" Extra="" />
		<field Field="model" Type="varchar(255)" Null="YES" Key="" Default="" Extra="" />
		<field Field="foreign_key" Type="int(10) unsigned" Null="YES" Key="" Extra="" />
		<field Field="alias" Type="varchar(255)" Null="YES" Key="" Default="" Extra="" />
		<field Field="lft" Type="int(10)" Null="YES" Key="" Extra="" />
		<field Field="rght" Type="int(10)" Null="YES" Key="" Extra="" />
		<key Table="aros" Non_unique="0" Key_name="PRIMARY" Seq_in_index="1" Column_name="id" Collation="A" Cardinality="2" Null="" Index_type="BTREE" Comment="" />
		<options Name="aros" Engine="InnoDB" Version="10" Row_format="Compact" Rows="2" Avg_row_length="8192" Data_length="16384" Max_data_length="0" Index_length="0" Data_free="10485760" Auto_increment="3" Create_time="2012-04-10 01:59:50" Collation="latin1_swedish_ci" Create_options="" Comment="" />
	</table_structure>
	<table_data name="aros">
	<row>
		<field name="id">1</field>
		<field name="parent_id" xsi:nil="true" />
		<field name="model">Group</field>
		<field name="foreign_key">1</field>
		<field name="alias"></field>
		<field name="lft">1</field>
		<field name="rght">2</field>
	</row>
	<row>
		<field name="id">2</field>
		<field name="parent_id" xsi:nil="true" />
		<field name="model">Group</field>
		<field name="foreign_key">2</field>
		<field name="alias"></field>
		<field name="lft">3</field>
		<field name="rght">4</field>
	</row>
	</table_data>
	<table_structure name="aros_acos">
		<field Field="id" Type="int(10) unsigned" Null="NO" Key="PRI" Extra="auto_increment" />
		<field Field="aro_id" Type="int(10) unsigned" Null="NO" Key="" Extra="" />
		<field Field="aco_id" Type="int(10) unsigned" Null="NO" Key="" Extra="" />
		<field Field="_create" Type="char(2)" Null="NO" Key="" Default="0" Extra="" />
		<field Field="_read" Type="char(2)" Null="NO" Key="" Default="0" Extra="" />
		<field Field="_update" Type="char(2)" Null="NO" Key="" Default="0" Extra="" />
		<field Field="_delete" Type="char(2)" Null="NO" Key="" Default="0" Extra="" />
		<key Table="aros_acos" Non_unique="0" Key_name="PRIMARY" Seq_in_index="1" Column_name="id" Collation="A" Cardinality="2" Null="" Index_type="BTREE" Comment="" />
		<options Name="aros_acos" Engine="InnoDB" Version="10" Row_format="Compact" Rows="2" Avg_row_length="8192" Data_length="16384" Max_data_length="0" Index_length="0" Data_free="10485760" Auto_increment="3" Create_time="2012-04-10 01:59:50" Collation="latin1_swedish_ci" Create_options="" Comment="" />
	</table_structure>
	<table_data name="aros_acos">
	<row>
		<field name="id">1</field>
		<field name="aro_id">1</field>
		<field name="aco_id">1</field>
		<field name="_create">1</field>
		<field name="_read">1</field>
		<field name="_update">1</field>
		<field name="_delete">1</field>
	</row>
	<row>
		<field name="id">2</field>
		<field name="aro_id">2</field>
		<field name="aco_id">1</field>
		<field name="_create">1</field>
		<field name="_read">1</field>
		<field name="_update">1</field>
		<field name="_delete">1</field>
	</row>
	</table_data>
	<table_structure name="categories">
		<field Field="id" Type="int(11) unsigned" Null="NO" Key="PRI" Extra="auto_increment" />
		<field Field="category" Type="varchar(20)" Null="NO" Key="UNI" Default="" Extra="" />
		<key Table="categories" Non_unique="0" Key_name="PRIMARY" Seq_in_index="1" Column_name="id" Collation="A" Cardinality="4" Null="" Index_type="BTREE" Comment="" />
		<key Table="categories" Non_unique="0" Key_name="category" Seq_in_index="1" Column_name="category" Collation="A" Cardinality="4" Null="" Index_type="BTREE" Comment="" />
		<options Name="categories" Engine="InnoDB" Version="10" Row_format="Compact" Rows="4" Avg_row_length="4096" Data_length="16384" Max_data_length="0" Index_length="16384" Data_free="10485760" Auto_increment="5" Create_time="2012-03-27 02:57:56" Collation="utf8_general_ci" Create_options="" Comment="" />
	</table_structure>
	<table_data name="categories">
	<row>
		<field name="id">4</field>
		<field name="category">event</field>
	</row>
	<row>
		<field name="id">3</field>
		<field name="category">organization</field>
	</row>
	<row>
		<field name="id">1</field>
		<field name="category">person</field>
	</row>
	<row>
		<field name="id">2</field>
		<field name="category">project</field>
	</row>
	</table_data>
	<table_structure name="connections">
		<field Field="id" Type="int(11) unsigned" Null="NO" Key="PRI" Extra="auto_increment" />
		<field Field="entry_id_1" Type="int(11) unsigned" Null="NO" Key="MUL" Extra="" />
		<field Field="entry_id_2" Type="int(11) unsigned" Null="NO" Key="MUL" Extra="" />
		<field Field="role" Type="varchar(80)" Null="YES" Key="" Extra="" />
		<key Table="connections" Non_unique="0" Key_name="PRIMARY" Seq_in_index="1" Column_name="id" Collation="A" Cardinality="346" Null="" Index_type="BTREE" Comment="" />
		<key Table="connections" Non_unique="1" Key_name="entry_id_1" Seq_in_index="1" Column_name="entry_id_1" Collation="A" Cardinality="346" Null="" Index_type="BTREE" Comment="" />
		<key Table="connections" Non_unique="1" Key_name="entry_id_2" Seq_in_index="1" Column_name="entry_id_2" Collation="A" Cardinality="346" Null="" Index_type="BTREE" Comment="" />
		<options Name="connections" Engine="InnoDB" Version="10" Row_format="Compact" Rows="346" Avg_row_length="47" Data_length="16384" Max_data_length="0" Index_length="32768" Data_free="10485760" Auto_increment="356" Create_time="2012-03-27 02:57:56" Collation="utf8_general_ci" Create_options="" Comment="" />
	</table_structure>
	<table_data name="connections">
	<row>
		<field name="id">1</field>
		<field name="entry_id_1">2</field>
		<field name="entry_id_2">3</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">2</field>
		<field name="entry_id_1">2</field>
		<field name="entry_id_2">4</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">3</field>
		<field name="entry_id_1">5</field>
		<field name="entry_id_2">6</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">4</field>
		<field name="entry_id_1">6</field>
		<field name="entry_id_2">7</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">5</field>
		<field name="entry_id_1">7</field>
		<field name="entry_id_2">8</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">6</field>
		<field name="entry_id_1">7</field>
		<field name="entry_id_2">9</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">7</field>
		<field name="entry_id_1">9</field>
		<field name="entry_id_2">10</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">8</field>
		<field name="entry_id_1">10</field>
		<field name="entry_id_2">6</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">12</field>
		<field name="entry_id_1">14</field>
		<field name="entry_id_2">2</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">13</field>
		<field name="entry_id_1">22</field>
		<field name="entry_id_2">7</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">14</field>
		<field name="entry_id_1">22</field>
		<field name="entry_id_2">6</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">15</field>
		<field name="entry_id_1">22</field>
		<field name="entry_id_2">19</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">16</field>
		<field name="entry_id_1">22</field>
		<field name="entry_id_2">21</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">17</field>
		<field name="entry_id_1">22</field>
		<field name="entry_id_2">2</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">18</field>
		<field name="entry_id_1">2</field>
		<field name="entry_id_2">23</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">19</field>
		<field name="entry_id_1">2</field>
		<field name="entry_id_2">24</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">20</field>
		<field name="entry_id_1">25</field>
		<field name="entry_id_2">26</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">22</field>
		<field name="entry_id_1">21</field>
		<field name="entry_id_2">19</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">23</field>
		<field name="entry_id_1">29</field>
		<field name="entry_id_2">30</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">24</field>
		<field name="entry_id_1">33</field>
		<field name="entry_id_2">2</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">25</field>
		<field name="entry_id_1">34</field>
		<field name="entry_id_2">33</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">26</field>
		<field name="entry_id_1">34</field>
		<field name="entry_id_2">12</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">27</field>
		<field name="entry_id_1">34</field>
		<field name="entry_id_2">1</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">28</field>
		<field name="entry_id_1">11</field>
		<field name="entry_id_2">6</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">29</field>
		<field name="entry_id_1">2</field>
		<field name="entry_id_2">27</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">30</field>
		<field name="entry_id_1">12</field>
		<field name="entry_id_2">1</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">31</field>
		<field name="entry_id_1">12</field>
		<field name="entry_id_2">33</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">32</field>
		<field name="entry_id_1">33</field>
		<field name="entry_id_2">1</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">33</field>
		<field name="entry_id_1">36</field>
		<field name="entry_id_2">33</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">34</field>
		<field name="entry_id_1">36</field>
		<field name="entry_id_2">34</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">35</field>
		<field name="entry_id_1">36</field>
		<field name="entry_id_2">12</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">36</field>
		<field name="entry_id_1">36</field>
		<field name="entry_id_2">1</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">37</field>
		<field name="entry_id_1">4</field>
		<field name="entry_id_2">19</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">38</field>
		<field name="entry_id_1">4</field>
		<field name="entry_id_2">3</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">39</field>
		<field name="entry_id_1">33</field>
		<field name="entry_id_2">38</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">40</field>
		<field name="entry_id_1">39</field>
		<field name="entry_id_2">14</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">41</field>
		<field name="entry_id_1">40</field>
		<field name="entry_id_2">41</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">42</field>
		<field name="entry_id_1">40</field>
		<field name="entry_id_2">42</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">43</field>
		<field name="entry_id_1">43</field>
		<field name="entry_id_2">37</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">44</field>
		<field name="entry_id_1">43</field>
		<field name="entry_id_2">44</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">45</field>
		<field name="entry_id_1">45</field>
		<field name="entry_id_2">46</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">46</field>
		<field name="entry_id_1">48</field>
		<field name="entry_id_2">49</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">47</field>
		<field name="entry_id_1">48</field>
		<field name="entry_id_2">50</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">48</field>
		<field name="entry_id_1">48</field>
		<field name="entry_id_2">51</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">49</field>
		<field name="entry_id_1">52</field>
		<field name="entry_id_2">53</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">50</field>
		<field name="entry_id_1">56</field>
		<field name="entry_id_2">57</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">51</field>
		<field name="entry_id_1">58</field>
		<field name="entry_id_2">59</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">52</field>
		<field name="entry_id_1">58</field>
		<field name="entry_id_2">60</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">53</field>
		<field name="entry_id_1">58</field>
		<field name="entry_id_2">61</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">54</field>
		<field name="entry_id_1">58</field>
		<field name="entry_id_2">62</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">55</field>
		<field name="entry_id_1">63</field>
		<field name="entry_id_2">52</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">56</field>
		<field name="entry_id_1">63</field>
		<field name="entry_id_2">64</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">57</field>
		<field name="entry_id_1">65</field>
		<field name="entry_id_2">67</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">58</field>
		<field name="entry_id_1">65</field>
		<field name="entry_id_2">68</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">59</field>
		<field name="entry_id_1">65</field>
		<field name="entry_id_2">60</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">60</field>
		<field name="entry_id_1">65</field>
		<field name="entry_id_2">58</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">61</field>
		<field name="entry_id_1">69</field>
		<field name="entry_id_2">70</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">62</field>
		<field name="entry_id_1">69</field>
		<field name="entry_id_2">25</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">63</field>
		<field name="entry_id_1">69</field>
		<field name="entry_id_2">71</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">64</field>
		<field name="entry_id_1">72</field>
		<field name="entry_id_2">73</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">65</field>
		<field name="entry_id_1">72</field>
		<field name="entry_id_2">74</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">66</field>
		<field name="entry_id_1">72</field>
		<field name="entry_id_2">75</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">67</field>
		<field name="entry_id_1">72</field>
		<field name="entry_id_2">76</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">68</field>
		<field name="entry_id_1">77</field>
		<field name="entry_id_2">78</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">69</field>
		<field name="entry_id_1">77</field>
		<field name="entry_id_2">79</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">70</field>
		<field name="entry_id_1">77</field>
		<field name="entry_id_2">80</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">71</field>
		<field name="entry_id_1">81</field>
		<field name="entry_id_2">80</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">72</field>
		<field name="entry_id_1">81</field>
		<field name="entry_id_2">82</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">73</field>
		<field name="entry_id_1">77</field>
		<field name="entry_id_2">83</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">74</field>
		<field name="entry_id_1">77</field>
		<field name="entry_id_2">84</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">75</field>
		<field name="entry_id_1">77</field>
		<field name="entry_id_2">85</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">76</field>
		<field name="entry_id_1">77</field>
		<field name="entry_id_2">86</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">77</field>
		<field name="entry_id_1">77</field>
		<field name="entry_id_2">87</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">78</field>
		<field name="entry_id_1">77</field>
		<field name="entry_id_2">88</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">79</field>
		<field name="entry_id_1">77</field>
		<field name="entry_id_2">89</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">80</field>
		<field name="entry_id_1">90</field>
		<field name="entry_id_2">91</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">81</field>
		<field name="entry_id_1">90</field>
		<field name="entry_id_2">92</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">82</field>
		<field name="entry_id_1">93</field>
		<field name="entry_id_2">94</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">83</field>
		<field name="entry_id_1">95</field>
		<field name="entry_id_2">96</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">84</field>
		<field name="entry_id_1">95</field>
		<field name="entry_id_2">97</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">85</field>
		<field name="entry_id_1">98</field>
		<field name="entry_id_2">67</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">86</field>
		<field name="entry_id_1">98</field>
		<field name="entry_id_2">99</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">87</field>
		<field name="entry_id_1">98</field>
		<field name="entry_id_2">100</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">88</field>
		<field name="entry_id_1">98</field>
		<field name="entry_id_2">101</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">89</field>
		<field name="entry_id_1">98</field>
		<field name="entry_id_2">102</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">90</field>
		<field name="entry_id_1">98</field>
		<field name="entry_id_2">103</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">91</field>
		<field name="entry_id_1">104</field>
		<field name="entry_id_2">94</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">92</field>
		<field name="entry_id_1">104</field>
		<field name="entry_id_2">105</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">93</field>
		<field name="entry_id_1">104</field>
		<field name="entry_id_2">106</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">94</field>
		<field name="entry_id_1">104</field>
		<field name="entry_id_2">107</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">95</field>
		<field name="entry_id_1">104</field>
		<field name="entry_id_2">91</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">96</field>
		<field name="entry_id_1">104</field>
		<field name="entry_id_2">108</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">97</field>
		<field name="entry_id_1">104</field>
		<field name="entry_id_2">109</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">98</field>
		<field name="entry_id_1">104</field>
		<field name="entry_id_2">110</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">99</field>
		<field name="entry_id_1">104</field>
		<field name="entry_id_2">111</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">100</field>
		<field name="entry_id_1">104</field>
		<field name="entry_id_2">112</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">101</field>
		<field name="entry_id_1">113</field>
		<field name="entry_id_2">2</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">102</field>
		<field name="entry_id_1">114</field>
		<field name="entry_id_2">115</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">103</field>
		<field name="entry_id_1">114</field>
		<field name="entry_id_2">116</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">104</field>
		<field name="entry_id_1">114</field>
		<field name="entry_id_2">117</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">105</field>
		<field name="entry_id_1">114</field>
		<field name="entry_id_2">118</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">106</field>
		<field name="entry_id_1">114</field>
		<field name="entry_id_2">62</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">107</field>
		<field name="entry_id_1">119</field>
		<field name="entry_id_2">120</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">108</field>
		<field name="entry_id_1">119</field>
		<field name="entry_id_2">121</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">110</field>
		<field name="entry_id_1">122</field>
		<field name="entry_id_2">123</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">111</field>
		<field name="entry_id_1">122</field>
		<field name="entry_id_2">124</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">112</field>
		<field name="entry_id_1">125</field>
		<field name="entry_id_2">57</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">113</field>
		<field name="entry_id_1">125</field>
		<field name="entry_id_2">126</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">114</field>
		<field name="entry_id_1">127</field>
		<field name="entry_id_2">128</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">115</field>
		<field name="entry_id_1">127</field>
		<field name="entry_id_2">106</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">116</field>
		<field name="entry_id_1">127</field>
		<field name="entry_id_2">129</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">117</field>
		<field name="entry_id_1">127</field>
		<field name="entry_id_2">130</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">118</field>
		<field name="entry_id_1">127</field>
		<field name="entry_id_2">131</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">119</field>
		<field name="entry_id_1">127</field>
		<field name="entry_id_2">132</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">120</field>
		<field name="entry_id_1">127</field>
		<field name="entry_id_2">133</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">121</field>
		<field name="entry_id_1">22</field>
		<field name="entry_id_2">134</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">122</field>
		<field name="entry_id_1">135</field>
		<field name="entry_id_2">94</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">123</field>
		<field name="entry_id_1">135</field>
		<field name="entry_id_2">105</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">124</field>
		<field name="entry_id_1">135</field>
		<field name="entry_id_2">136</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">125</field>
		<field name="entry_id_1">135</field>
		<field name="entry_id_2">104</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">126</field>
		<field name="entry_id_1">137</field>
		<field name="entry_id_2">138</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">127</field>
		<field name="entry_id_1">137</field>
		<field name="entry_id_2">79</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">128</field>
		<field name="entry_id_1">139</field>
		<field name="entry_id_2">141</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">129</field>
		<field name="entry_id_1">139</field>
		<field name="entry_id_2">97</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">130</field>
		<field name="entry_id_1">139</field>
		<field name="entry_id_2">142</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">131</field>
		<field name="entry_id_1">139</field>
		<field name="entry_id_2">143</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">132</field>
		<field name="entry_id_1">144</field>
		<field name="entry_id_2">145</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">133</field>
		<field name="entry_id_1">144</field>
		<field name="entry_id_2">146</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">134</field>
		<field name="entry_id_1">147</field>
		<field name="entry_id_2">77</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">135</field>
		<field name="entry_id_1">147</field>
		<field name="entry_id_2">148</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">136</field>
		<field name="entry_id_1">148</field>
		<field name="entry_id_2">149</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">137</field>
		<field name="entry_id_1">147</field>
		<field name="entry_id_2">149</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">138</field>
		<field name="entry_id_1">150</field>
		<field name="entry_id_2">151</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">139</field>
		<field name="entry_id_1">150</field>
		<field name="entry_id_2">152</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">140</field>
		<field name="entry_id_1">153</field>
		<field name="entry_id_2">154</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">141</field>
		<field name="entry_id_1">155</field>
		<field name="entry_id_2">53</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">142</field>
		<field name="entry_id_1">155</field>
		<field name="entry_id_2">156</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">143</field>
		<field name="entry_id_1">155</field>
		<field name="entry_id_2">153</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">144</field>
		<field name="entry_id_1">155</field>
		<field name="entry_id_2">157</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">145</field>
		<field name="entry_id_1">40</field>
		<field name="entry_id_2">158</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">146</field>
		<field name="entry_id_1">155</field>
		<field name="entry_id_2">159</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">147</field>
		<field name="entry_id_1">159</field>
		<field name="entry_id_2">48</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">148</field>
		<field name="entry_id_1">160</field>
		<field name="entry_id_2">155</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">149</field>
		<field name="entry_id_1">155</field>
		<field name="entry_id_2">161</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">150</field>
		<field name="entry_id_1">155</field>
		<field name="entry_id_2">162</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">151</field>
		<field name="entry_id_1">155</field>
		<field name="entry_id_2">163</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">152</field>
		<field name="entry_id_1">155</field>
		<field name="entry_id_2">164</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">153</field>
		<field name="entry_id_1">155</field>
		<field name="entry_id_2">48</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">154</field>
		<field name="entry_id_1">155</field>
		<field name="entry_id_2">165</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">155</field>
		<field name="entry_id_1">167</field>
		<field name="entry_id_2">138</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">156</field>
		<field name="entry_id_1">168</field>
		<field name="entry_id_2">67</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">157</field>
		<field name="entry_id_1">169</field>
		<field name="entry_id_2">170</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">158</field>
		<field name="entry_id_1">171</field>
		<field name="entry_id_2">172</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">159</field>
		<field name="entry_id_1">171</field>
		<field name="entry_id_2">7</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">160</field>
		<field name="entry_id_1">171</field>
		<field name="entry_id_2">173</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">161</field>
		<field name="entry_id_1">171</field>
		<field name="entry_id_2">174</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">162</field>
		<field name="entry_id_1">175</field>
		<field name="entry_id_2">22</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">163</field>
		<field name="entry_id_1">175</field>
		<field name="entry_id_2">2</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">164</field>
		<field name="entry_id_1">175</field>
		<field name="entry_id_2">40</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">165</field>
		<field name="entry_id_1">177</field>
		<field name="entry_id_2">22</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">166</field>
		<field name="entry_id_1">177</field>
		<field name="entry_id_2">2</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">167</field>
		<field name="entry_id_1">166</field>
		<field name="entry_id_2">178</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">168</field>
		<field name="entry_id_1">166</field>
		<field name="entry_id_2">179</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">169</field>
		<field name="entry_id_1">169</field>
		<field name="entry_id_2">180</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">170</field>
		<field name="entry_id_1">169</field>
		<field name="entry_id_2">181</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">171</field>
		<field name="entry_id_1">182</field>
		<field name="entry_id_2">78</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">172</field>
		<field name="entry_id_1">182</field>
		<field name="entry_id_2">88</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">173</field>
		<field name="entry_id_1">182</field>
		<field name="entry_id_2">183</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">174</field>
		<field name="entry_id_1">182</field>
		<field name="entry_id_2">77</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">175</field>
		<field name="entry_id_1">182</field>
		<field name="entry_id_2">89</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">176</field>
		<field name="entry_id_1">184</field>
		<field name="entry_id_2">182</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">177</field>
		<field name="entry_id_1">88</field>
		<field name="entry_id_2">184</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">178</field>
		<field name="entry_id_1">185</field>
		<field name="entry_id_2">186</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">179</field>
		<field name="entry_id_1">185</field>
		<field name="entry_id_2">187</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">180</field>
		<field name="entry_id_1">185</field>
		<field name="entry_id_2">127</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">182</field>
		<field name="entry_id_1">185</field>
		<field name="entry_id_2">106</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">183</field>
		<field name="entry_id_1">185</field>
		<field name="entry_id_2">188</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">184</field>
		<field name="entry_id_1">30</field>
		<field name="entry_id_2">189</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">185</field>
		<field name="entry_id_1">30</field>
		<field name="entry_id_2">190</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">186</field>
		<field name="entry_id_1">30</field>
		<field name="entry_id_2">191</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">187</field>
		<field name="entry_id_1">30</field>
		<field name="entry_id_2">192</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">188</field>
		<field name="entry_id_1">30</field>
		<field name="entry_id_2">193</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">189</field>
		<field name="entry_id_1">30</field>
		<field name="entry_id_2">194</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">190</field>
		<field name="entry_id_1">30</field>
		<field name="entry_id_2">195</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">191</field>
		<field name="entry_id_1">6</field>
		<field name="entry_id_2">196</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">192</field>
		<field name="entry_id_1">6</field>
		<field name="entry_id_2">173</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">193</field>
		<field name="entry_id_1">6</field>
		<field name="entry_id_2">70</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">194</field>
		<field name="entry_id_1">6</field>
		<field name="entry_id_2">197</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">195</field>
		<field name="entry_id_1">6</field>
		<field name="entry_id_2">198</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">196</field>
		<field name="entry_id_1">6</field>
		<field name="entry_id_2">199</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">197</field>
		<field name="entry_id_1">6</field>
		<field name="entry_id_2">200</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">198</field>
		<field name="entry_id_1">6</field>
		<field name="entry_id_2">174</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">199</field>
		<field name="entry_id_1">201</field>
		<field name="entry_id_2">92</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">200</field>
		<field name="entry_id_1">201</field>
		<field name="entry_id_2">91</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">201</field>
		<field name="entry_id_1">202</field>
		<field name="entry_id_2">203</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">202</field>
		<field name="entry_id_1">204</field>
		<field name="entry_id_2">205</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">203</field>
		<field name="entry_id_1">204</field>
		<field name="entry_id_2">206</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">204</field>
		<field name="entry_id_1">207</field>
		<field name="entry_id_2">208</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">205</field>
		<field name="entry_id_1">207</field>
		<field name="entry_id_2">209</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">206</field>
		<field name="entry_id_1">207</field>
		<field name="entry_id_2">202</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">207</field>
		<field name="entry_id_1">207</field>
		<field name="entry_id_2">210</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">208</field>
		<field name="entry_id_1">207</field>
		<field name="entry_id_2">211</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">209</field>
		<field name="entry_id_1">207</field>
		<field name="entry_id_2">206</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">210</field>
		<field name="entry_id_1">207</field>
		<field name="entry_id_2">143</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">211</field>
		<field name="entry_id_1">207</field>
		<field name="entry_id_2">212</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">213</field>
		<field name="entry_id_1">213</field>
		<field name="entry_id_2">214</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">214</field>
		<field name="entry_id_1">213</field>
		<field name="entry_id_2">162</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">215</field>
		<field name="entry_id_1">213</field>
		<field name="entry_id_2">165</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">216</field>
		<field name="entry_id_1">213</field>
		<field name="entry_id_2">215</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">217</field>
		<field name="entry_id_1">213</field>
		<field name="entry_id_2">216</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">218</field>
		<field name="entry_id_1">213</field>
		<field name="entry_id_2">217</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">219</field>
		<field name="entry_id_1">213</field>
		<field name="entry_id_2">218</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">220</field>
		<field name="entry_id_1">213</field>
		<field name="entry_id_2">219</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">221</field>
		<field name="entry_id_1">220</field>
		<field name="entry_id_2">221</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">222</field>
		<field name="entry_id_1">220</field>
		<field name="entry_id_2">203</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">223</field>
		<field name="entry_id_1">220</field>
		<field name="entry_id_2">202</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">224</field>
		<field name="entry_id_1">188</field>
		<field name="entry_id_2">222</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">225</field>
		<field name="entry_id_1">188</field>
		<field name="entry_id_2">223</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">226</field>
		<field name="entry_id_1">224</field>
		<field name="entry_id_2">64</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">227</field>
		<field name="entry_id_1">225</field>
		<field name="entry_id_2">226</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">228</field>
		<field name="entry_id_1">123</field>
		<field name="entry_id_2">228</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">229</field>
		<field name="entry_id_1">122</field>
		<field name="entry_id_2">228</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">230</field>
		<field name="entry_id_1">229</field>
		<field name="entry_id_2">92</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">231</field>
		<field name="entry_id_1">229</field>
		<field name="entry_id_2">136</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">232</field>
		<field name="entry_id_1">229</field>
		<field name="entry_id_2">230</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">233</field>
		<field name="entry_id_1">229</field>
		<field name="entry_id_2">231</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">234</field>
		<field name="entry_id_1">229</field>
		<field name="entry_id_2">232</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">235</field>
		<field name="entry_id_1">229</field>
		<field name="entry_id_2">233</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">236</field>
		<field name="entry_id_1">234</field>
		<field name="entry_id_2">236</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">237</field>
		<field name="entry_id_1">234</field>
		<field name="entry_id_2">237</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">238</field>
		<field name="entry_id_1">124</field>
		<field name="entry_id_2">203</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">239</field>
		<field name="entry_id_1">124</field>
		<field name="entry_id_2">40</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">240</field>
		<field name="entry_id_1">239</field>
		<field name="entry_id_2">183</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">241</field>
		<field name="entry_id_1">239</field>
		<field name="entry_id_2">240</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">242</field>
		<field name="entry_id_1">240</field>
		<field name="entry_id_2">241</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">243</field>
		<field name="entry_id_1">242</field>
		<field name="entry_id_2">7</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">244</field>
		<field name="entry_id_1">242</field>
		<field name="entry_id_2">243</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">245</field>
		<field name="entry_id_1">242</field>
		<field name="entry_id_2">64</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">246</field>
		<field name="entry_id_1">242</field>
		<field name="entry_id_2">26</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">247</field>
		<field name="entry_id_1">242</field>
		<field name="entry_id_2">244</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">248</field>
		<field name="entry_id_1">242</field>
		<field name="entry_id_2">245</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">249</field>
		<field name="entry_id_1">246</field>
		<field name="entry_id_2">247</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">250</field>
		<field name="entry_id_1">246</field>
		<field name="entry_id_2">248</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">251</field>
		<field name="entry_id_1">205</field>
		<field name="entry_id_2">210</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">252</field>
		<field name="entry_id_1">205</field>
		<field name="entry_id_2">250</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">253</field>
		<field name="entry_id_1">205</field>
		<field name="entry_id_2">48</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">254</field>
		<field name="entry_id_1">203</field>
		<field name="entry_id_2">251</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">255</field>
		<field name="entry_id_1">203</field>
		<field name="entry_id_2">210</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">256</field>
		<field name="entry_id_1">203</field>
		<field name="entry_id_2">92</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">257</field>
		<field name="entry_id_1">252</field>
		<field name="entry_id_2">105</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">258</field>
		<field name="entry_id_1">252</field>
		<field name="entry_id_2">94</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">259</field>
		<field name="entry_id_1">252</field>
		<field name="entry_id_2">229</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">260</field>
		<field name="entry_id_1">252</field>
		<field name="entry_id_2">253</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">261</field>
		<field name="entry_id_1">253</field>
		<field name="entry_id_2">229</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">262</field>
		<field name="entry_id_1">253</field>
		<field name="entry_id_2">136</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">263</field>
		<field name="entry_id_1">253</field>
		<field name="entry_id_2">92</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">264</field>
		<field name="entry_id_1">254</field>
		<field name="entry_id_2">255</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">265</field>
		<field name="entry_id_1">245</field>
		<field name="entry_id_2">256</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">266</field>
		<field name="entry_id_1">245</field>
		<field name="entry_id_2">257</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">267</field>
		<field name="entry_id_1">258</field>
		<field name="entry_id_2">14</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">268</field>
		<field name="entry_id_1">259</field>
		<field name="entry_id_2">260</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">269</field>
		<field name="entry_id_1">259</field>
		<field name="entry_id_2">261</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">270</field>
		<field name="entry_id_1">259</field>
		<field name="entry_id_2">262</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">271</field>
		<field name="entry_id_1">259</field>
		<field name="entry_id_2">263</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">272</field>
		<field name="entry_id_1">259</field>
		<field name="entry_id_2">264</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">273</field>
		<field name="entry_id_1">46</field>
		<field name="entry_id_2">265</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">274</field>
		<field name="entry_id_1">265</field>
		<field name="entry_id_2">266</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">275</field>
		<field name="entry_id_1">46</field>
		<field name="entry_id_2">173</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">276</field>
		<field name="entry_id_1">267</field>
		<field name="entry_id_2">268</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">277</field>
		<field name="entry_id_1">269</field>
		<field name="entry_id_2">129</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">278</field>
		<field name="entry_id_1">269</field>
		<field name="entry_id_2">97</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">279</field>
		<field name="entry_id_1">269</field>
		<field name="entry_id_2">106</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">280</field>
		<field name="entry_id_1">269</field>
		<field name="entry_id_2">73</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">281</field>
		<field name="entry_id_1">72</field>
		<field name="entry_id_2">269</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">282</field>
		<field name="entry_id_1">270</field>
		<field name="entry_id_2">7</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">283</field>
		<field name="entry_id_1">270</field>
		<field name="entry_id_2">173</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">284</field>
		<field name="entry_id_1">270</field>
		<field name="entry_id_2">271</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">285</field>
		<field name="entry_id_1">270</field>
		<field name="entry_id_2">272</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">286</field>
		<field name="entry_id_1">173</field>
		<field name="entry_id_2">273</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">287</field>
		<field name="entry_id_1">274</field>
		<field name="entry_id_2">188</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">288</field>
		<field name="entry_id_1">274</field>
		<field name="entry_id_2">275</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">289</field>
		<field name="entry_id_1">277</field>
		<field name="entry_id_2">203</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">290</field>
		<field name="entry_id_1">278</field>
		<field name="entry_id_2">279</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">291</field>
		<field name="entry_id_1">282</field>
		<field name="entry_id_2">281</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">292</field>
		<field name="entry_id_1">283</field>
		<field name="entry_id_2">284</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">293</field>
		<field name="entry_id_1">285</field>
		<field name="entry_id_2">286</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">294</field>
		<field name="entry_id_1">287</field>
		<field name="entry_id_2">288</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">295</field>
		<field name="entry_id_1">287</field>
		<field name="entry_id_2">289</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">296</field>
		<field name="entry_id_1">289</field>
		<field name="entry_id_2">288</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">297</field>
		<field name="entry_id_1">290</field>
		<field name="entry_id_2">40</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">298</field>
		<field name="entry_id_1">291</field>
		<field name="entry_id_2">280</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">299</field>
		<field name="entry_id_1">292</field>
		<field name="entry_id_2">288</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">300</field>
		<field name="entry_id_1">292</field>
		<field name="entry_id_2">287</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">301</field>
		<field name="entry_id_1">292</field>
		<field name="entry_id_2">289</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">302</field>
		<field name="entry_id_1">293</field>
		<field name="entry_id_2">294</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">303</field>
		<field name="entry_id_1">293</field>
		<field name="entry_id_2">295</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">304</field>
		<field name="entry_id_1">296</field>
		<field name="entry_id_2">286</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">305</field>
		<field name="entry_id_1">298</field>
		<field name="entry_id_2">284</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">306</field>
		<field name="entry_id_1">298</field>
		<field name="entry_id_2">286</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">307</field>
		<field name="entry_id_1">298</field>
		<field name="entry_id_2">280</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">308</field>
		<field name="entry_id_1">299</field>
		<field name="entry_id_2">45</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">309</field>
		<field name="entry_id_1">295</field>
		<field name="entry_id_2">300</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">310</field>
		<field name="entry_id_1">301</field>
		<field name="entry_id_2">302</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">311</field>
		<field name="entry_id_1">304</field>
		<field name="entry_id_2">197</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">312</field>
		<field name="entry_id_1">306</field>
		<field name="entry_id_2">307</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">313</field>
		<field name="entry_id_1">309</field>
		<field name="entry_id_2">245</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">314</field>
		<field name="entry_id_1">309</field>
		<field name="entry_id_2">196</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">315</field>
		<field name="entry_id_1">309</field>
		<field name="entry_id_2">310</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">316</field>
		<field name="entry_id_1">309</field>
		<field name="entry_id_2">242</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">317</field>
		<field name="entry_id_1">309</field>
		<field name="entry_id_2">311</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">318</field>
		<field name="entry_id_1">310</field>
		<field name="entry_id_2">311</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">319</field>
		<field name="entry_id_1">310</field>
		<field name="entry_id_2">312</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">320</field>
		<field name="entry_id_1">312</field>
		<field name="entry_id_2">313</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">321</field>
		<field name="entry_id_1">314</field>
		<field name="entry_id_2">315</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">322</field>
		<field name="entry_id_1">317</field>
		<field name="entry_id_2">6</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">323</field>
		<field name="entry_id_1">318</field>
		<field name="entry_id_2">243</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">324</field>
		<field name="entry_id_1">318</field>
		<field name="entry_id_2">242</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">325</field>
		<field name="entry_id_1">319</field>
		<field name="entry_id_2">320</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">326</field>
		<field name="entry_id_1">320</field>
		<field name="entry_id_2">321</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">327</field>
		<field name="entry_id_1">320</field>
		<field name="entry_id_2">46</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">328</field>
		<field name="entry_id_1">320</field>
		<field name="entry_id_2">242</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">329</field>
		<field name="entry_id_1">320</field>
		<field name="entry_id_2">119</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">330</field>
		<field name="entry_id_1">322</field>
		<field name="entry_id_2">166</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">331</field>
		<field name="entry_id_1">323</field>
		<field name="entry_id_2">242</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">332</field>
		<field name="entry_id_1">323</field>
		<field name="entry_id_2">318</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">333</field>
		<field name="entry_id_1">323</field>
		<field name="entry_id_2">309</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">334</field>
		<field name="entry_id_1">324</field>
		<field name="entry_id_2">325</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">335</field>
		<field name="entry_id_1">255</field>
		<field name="entry_id_2">326</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">336</field>
		<field name="entry_id_1">326</field>
		<field name="entry_id_2">46</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">337</field>
		<field name="entry_id_1">327</field>
		<field name="entry_id_2">70</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">338</field>
		<field name="entry_id_1">327</field>
		<field name="entry_id_2">197</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">339</field>
		<field name="entry_id_1">327</field>
		<field name="entry_id_2">196</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">340</field>
		<field name="entry_id_1">327</field>
		<field name="entry_id_2">7</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">341</field>
		<field name="entry_id_1">327</field>
		<field name="entry_id_2">328</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">342</field>
		<field name="entry_id_1">327</field>
		<field name="entry_id_2">329</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">343</field>
		<field name="entry_id_1">327</field>
		<field name="entry_id_2">330</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">344</field>
		<field name="entry_id_1">331</field>
		<field name="entry_id_2">197</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">345</field>
		<field name="entry_id_1">331</field>
		<field name="entry_id_2">196</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">346</field>
		<field name="entry_id_1">331</field>
		<field name="entry_id_2">6</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">347</field>
		<field name="entry_id_1">331</field>
		<field name="entry_id_2">332</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">348</field>
		<field name="entry_id_1">332</field>
		<field name="entry_id_2">161</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">349</field>
		<field name="entry_id_1">334</field>
		<field name="entry_id_2">7</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">350</field>
		<field name="entry_id_1">334</field>
		<field name="entry_id_2">242</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">351</field>
		<field name="entry_id_1">334</field>
		<field name="entry_id_2">37</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">352</field>
		<field name="entry_id_1">105</field>
		<field name="entry_id_2">335</field>
		<field name="role" xsi:nil="true" />
	</row>
	<row>
		<field name="id">353</field>
		<field name="entry_id_1">318</field>
		<field name="entry_id_2">309</field>
		<field name="role" xsi:nil="true" />
	</row>
	</table_data>
	<table_structure name="entries">
		<field Field="id" Type="int(11) unsigned" Null="NO" Key="PRI" Extra="auto_increment" />
		<field Field="name" Type="varchar(200)" Null="NO" Key="" Default="" Extra="" />
		<field Field="category_id" Type="int(11) unsigned" Null="NO" Key="MUL" Extra="" />
		<field Field="description" Type="varchar(1250)" Null="YES" Key="" Default="" Extra="" />
		<field Field="user_id" Type="int(11) unsigned" Null="NO" Key="MUL" Extra="" />
		<field Field="date_1" Type="datetime" Null="YES" Key="" Extra="" />
		<field Field="date_2" Type="datetime" Null="YES" Key="" Extra="" />
		<field Field="location_id" Type="int(11) unsigned" Null="YES" Key="MUL" Extra="" />
		<field Field="published" Type="tinyint(1)" Null="NO" Key="" Default="0" Extra="" />
		<field Field="created" Type="datetime" Null="YES" Key="" Extra="" />
		<field Field="modified" Type="datetime" Null="YES" Key="" Extra="" />
		<field Field="source_name" Type="varchar(100)" Null="YES" Key="" Extra="" />
		<field Field="source_url" Type="varchar(300)" Null="YES" Key="" Extra="" />
		<field Field="slug" Type="varchar(200)" Null="NO" Key="" Extra="" />
		<field Field="homepage_url" Type="varchar(300)" Null="YES" Key="" Extra="" />
		<key Table="entries" Non_unique="0" Key_name="PRIMARY" Seq_in_index="1" Column_name="id" Collation="A" Cardinality="355" Null="" Index_type="BTREE" Comment="" />
		<key Table="entries" Non_unique="1" Key_name="category_id" Seq_in_index="1" Column_name="category_id" Collation="A" Cardinality="9" Null="" Index_type="BTREE" Comment="" />
		<key Table="entries" Non_unique="1" Key_name="user_id" Seq_in_index="1" Column_name="user_id" Collation="A" Cardinality="14" Null="" Index_type="BTREE" Comment="" />
		<key Table="entries" Non_unique="1" Key_name="location_id" Seq_in_index="1" Column_name="location_id" Collation="A" Cardinality="2" Null="YES" Index_type="BTREE" Comment="" />
		<options Name="entries" Engine="InnoDB" Version="10" Row_format="Compact" Rows="335" Avg_row_length="586" Data_length="196608" Max_data_length="0" Index_length="49152" Data_free="10485760" Auto_increment="337" Create_time="2012-04-10 01:36:42" Collation="utf8_general_ci" Create_options="" Comment="" />
	</table_structure>
	<table_data name="entries">
	<row>
		<field name="id">1</field>
		<field name="name">Stefano</field>
		<field name="category_id">1</field>
		<field name="description">Stefano is a senior at Northeastern University.</field>
		<field name="user_id">1</field>
		<field name="date_1">1989-12-13 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-26 23:01:18</field>
		<field name="modified">2012-04-10 15:21:44</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">stefano</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">2</field>
		<field name="name">Terrence Masson</field>
		<field name="category_id">1</field>
		<field name="description">I am full time academic faculty and Executive Professor of Creative Industries at Northeastern University in Boston. Previously I have also enjoyed two decades of fun in a wide variety of areas ... Iâ€™ve directed award winning short animated films, was the sole developer of the original South Park CG animation technique, built a pre-vis department for Douglas Trumbull, fed Boba Fett to the Sarlac and flew the Millennium Falcon for George Lucas ... among many other things.

As a member of the Producers Guild of America, 
Visual Effects Society and an ACM SIGGRAPH Pioneer I enjoy a worldwide collection of great friends.</field>
		<field name="user_id">2</field>
		<field name="date_1">1966-09-20 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-27 14:35:26</field>
		<field name="modified">2012-09-06 13:54:40</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">terrence-masson</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">3</field>
		<field name="name">Star Wars: Episode V - The Empire Strikes Back</field>
		<field name="category_id">2</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-27 15:21:59</field>
		<field name="modified">2012-04-10 14:25:28</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">star-wars-episode-v-the-empire-strikes-back</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">4</field>
		<field name="name">Star Wars: Episode VI - Return of the Jedi </field>
		<field name="category_id">2</field>
		<field name="description">Star Wars Episode VI: Return of the Jedi (also known as Return of the Jedi) is a 1983 American epic space opera film directed by Richard Marquand and written by George Lucas and Lawrence Kasdan, with Lucas as executive producer. It is the third film in the Star Wars franchise and the first film to use THX technology. The film is set approximately one year after The Empire Strikes Back.[2] The evil Galactic Empire, with the help of the villainous Darth Vader, is building a second Death Star in order to crush the Rebel Alliance. Since Emperor Palpatine plans to personally oversee the final stages of its construction, the Rebel Fleet launches a full-scale attack on the Death Star in order to prevent its completion and kill Palpatine, effectively bringing an end to the Empire. Meanwhile, Luke Skywalker, a Rebel leader and Jedi Knight, struggles to bring Vader, who is his father and himself a fallen Jedi, back from the Dark Side of the Force.</field>
		<field name="user_id">2</field>
		<field name="date_1">1983-05-25 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-27 15:23:14</field>
		<field name="modified">2012-04-23 16:31:46</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">star-wars-episode-vi-return-of-the-jedi</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">5</field>
		<field name="name">Toy Story</field>
		<field name="category_id">2</field>
		<field name="description">Toy Story is a 1995 American computer-animated comedy film released by Walt Disney Pictures. It is Pixar's first feature film as well as the first ever feature film to be made entirely with CGI. The film was directed by John Lasseter and featured the voices of Tom Hanks and Tim Allen. </field>
		<field name="user_id">5</field>
		<field name="date_1">1995-11-19 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-28 22:34:56</field>
		<field name="modified">2012-03-28 22:37:21</field>
		<field name="source_name">Wikipedia</field>
		<field name="source_url">http://en.wikipedia.org/wiki/Toy_Story</field>
		<field name="slug">toy-story</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">6</field>
		<field name="name">Pixar Animation Studios</field>
		<field name="category_id">3</field>
		<field name="description">Pixar was formed in 1986 when Steven Jobs (of Apple and NeXT computer fame) purchased the Lucasfilm Computer Graphics Division from George Lucas. George had decided about a year before that he did not want to continue a hardware development effort in-house. He also did not at that time want to pursue computer-generated animation (as did the employees). He therefore agreed to allow Edwin Catmull, Alvy Ray Smith, and the rest of the employees of the Lucasfilm Computer Division to seek out investors so they could spin off into their own company. Many different options were explored over the course of that year. In the end, the negotiations went down to the very last minute with the outcome not always certain. The deal that was finally made called for $5 million dollars to purchase the division with an additional $5 million for immediate capital investment.
Founding members included (in alphabetical order): Tony Apodaca, Loren Carpenter, Ed Catmull, Rob Cook, David DeFrancesco, Tom Duff, Craig Good, Ralph Guggenheim, Pat Hanrahan, Sam Lefler, Darwyn Peachey, Tom Porter, Eben Ostby, Bill Reeves, Alvy Ray Smith, and Rodney Stock.
</field>
		<field name="user_id">5</field>
		<field name="date_1">1986-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-28 22:38:32</field>
		<field name="modified">2012-10-24 12:36:46</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">pixar-animation-studios</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">7</field>
		<field name="name">Edwin Catmull</field>
		<field name="category_id">1</field>
		<field name="description">Edwin Earl Catmull, Ph.D. (born 1945) is a computer scientist and current president of Walt Disney Animation Studios and Pixar Animation Studios. As a computer scientist, Catmull has contributed to many important developments in computer graphics.</field>
		<field name="user_id">5</field>
		<field name="date_1">1945-03-31 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-28 22:41:10</field>
		<field name="modified">2012-03-29 08:05:16</field>
		<field name="source_name">Wikipedia</field>
		<field name="source_url">en.wikipedia.org/wiki/Edwin_Catmull</field>
		<field name="slug">edwin-catmull</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">8</field>
		<field name="name">Walt Disney Animation Studios</field>
		<field name="category_id">3</field>
		<field name="description">Walt Disney Animation Studios is an American animation studio headquartered in Burbank, California. The studio, founded in 1923 as the Disney Brothers Cartoon Studio by brothers Walt and Roy Disney, is the oldest subsidiary of The Walt Disney Company. It is responsible for creating the company's well-known animated feature films and short subjects.

From 1926 to 1929 the studio was known as The Walt Disney Studio. In 1929 the company restructured and diversified under the name Walt Disney Productions, Ltd. The animation studio was then an integrated part of Walt Disney Productions which also included other divisions such as the live action film studio. In 1986 the company again restructured, creating The Walt Disney Company as a separate parent company, and making the animation studio an official subsidiary, called at the time Walt Disney Feature Animation. The division took on its current name in 2007.</field>
		<field name="user_id">5</field>
		<field name="date_1">1929-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-28 22:45:54</field>
		<field name="modified">2012-03-28 22:48:28</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">walt-disney-animation-studios</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">9</field>
		<field name="name">Alexander Schure</field>
		<field name="category_id">1</field>
		<field name="description">Alexander Schure (August 3, 1920 - October 29, 2009)[1] was an American academic. Schure founded the New York Institute of Technology (NYIT) in 1955. He also served as the Chancellor of Nova Southeastern University (NSU) from 1970 until 1985.[2]

Schure is credited with saving Nova University, which was in deep financial trouble, after he became the school's chancellor in 1970.[2] The university is now called Nova Southeastern University, and is now the largest private university in Florida, with more than 28,000 students as of 2009.[2]</field>
		<field name="user_id">5</field>
		<field name="date_1">1920-08-03 00:00:00</field>
		<field name="date_2">2009-10-29 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-29 08:05:08</field>
		<field name="modified">2012-03-29 08:06:29</field>
		<field name="source_name">Wikipedia</field>
		<field name="source_url">http://en.wikipedia.org/wiki/Alexander_Schure</field>
		<field name="slug">alexander-schure</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">10</field>
		<field name="name">New York Institute of Technology</field>
		<field name="category_id">3</field>
		<field name="description">New York Institute of Technology (also known as NYIT) is a private, non-sectarian, co-educational research university in New York City. NYIT has five schools and two colleges, all with a strong emphasis on technology and applied scientific research. The university has two New York campuses, one in Old Westbury Long Island and one near Columbus Circle in Manhattan, as well as several global campuses and programs (e.g. Bahrain, Canada, China, Jordan, United Arab Emirates). NYIT offers a total of 90 undergraduate degree, graduate degree programs, and medical degree programs to 15,000 students in academic areas such as architecture and design; arts and sciences; education; engineering and computing sciences; health professions; management; and osteopathic medicine.</field>
		<field name="user_id">5</field>
		<field name="date_1">1955-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-29 08:07:29</field>
		<field name="modified">2012-03-29 08:08:39</field>
		<field name="source_name">Wikipedia</field>
		<field name="source_url">http://en.wikipedia.org/wiki/New_York_Institute_of_Technology</field>
		<field name="slug">new-york-institute-of-technology</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">11</field>
		<field name="name">Monsters, Inc.</field>
		<field name="category_id">2</field>
		<field name="description">Monsters generate their city's power by scaring children, but they are terribly afraid themselves of being contaminated by children, so when one enters Monstropolis, top scarer Sulley finds his world disrupted.</field>
		<field name="user_id">5</field>
		<field name="date_1">2001-11-02 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-29 09:56:58</field>
		<field name="modified">2012-04-17 14:14:14</field>
		<field name="source_name">IMDB</field>
		<field name="source_url">http://www.imdb.com/title/tt0198781/</field>
		<field name="slug">monsters-inc</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">12</field>
		<field name="name">Michelle</field>
		<field name="category_id">1</field>
		<field name="description">Michelle is a graphic designer who proudly hails from the small farm town of Boxborough, Massachusetts. Apart from design, she likes photography, traveling, and reading Boston Metro horoscopes. She has worked in the fast-paced NYC fashion industry, in a hands-on local sign shop, and with a small group at a cozy design firm in Boston. Post-graduation, she plans to scrape up new experiences doing freelance projects while moving around the US. To contact her, please visit www.michellegayowski.com.</field>
		<field name="user_id">4</field>
		<field name="date_1">1989-07-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-29 14:18:24</field>
		<field name="modified">2012-04-17 14:23:18</field>
		<field name="source_name">capstone class 2012</field>
		<field name="source_url">www.historyofcg.com</field>
		<field name="slug">michelle</field>
		<field name="homepage_url">www.michellegayowski.com</field>
	</row>
	<row>
		<field name="id">13</field>
		<field name="name">FOOBAR</field>
		<field name="category_id">2</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-04-03 14:08:04</field>
		<field name="modified">2012-04-03 14:08:04</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">foobar</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">14</field>
		<field name="name">SIGGRAPH 2010</field>
		<field name="category_id">4</field>
		<field name="description">37th annual conference on computer graphics and interactive techniques, held in Los Angeles, CA.</field>
		<field name="user_id">2</field>
		<field name="date_1">2010-07-25 00:00:00</field>
		<field name="date_2">2010-07-29 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-03 14:25:22</field>
		<field name="modified">2012-10-27 16:59:54</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">siggraph-2010</field>
		<field name="homepage_url">http://www.siggraph.org/s2010/</field>
	</row>
	<row>
		<field name="id">19</field>
		<field name="name">George Lucas</field>
		<field name="category_id">1</field>
		<field name="description">George Walton Lucas, Jr. (born May 14, 1944) is an American film producer, screenwriter, director, and entrepreneur. He is the founder, chairman and chief executive of Lucasfilm.[3] He is best known as the creator of the space opera franchise Star Wars and the archaeologist-adventurer character Indiana Jones. Lucas is one of the American film industry's most financially successful directors/producers, with an estimated net worth of $3.2 billion as of 2011.</field>
		<field name="user_id">6</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-03 14:39:08</field>
		<field name="modified">2012-04-03 14:39:08</field>
		<field name="source_name">Wikipedia</field>
		<field name="source_url">http://en.wikipedia.org/wiki/George_Lucas</field>
		<field name="slug">george-lucas</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">21</field>
		<field name="name">Lucasfilm Limited</field>
		<field name="category_id">3</field>
		<field name="description">Lucasfilm Limited is an American film production company founded by George Lucas in 1971, based in San Francisco, California. Lucas is the company's current chairman and CEO, and Micheline Chau is the president and COO.
The company is best known for producing the Star Wars films, and has also produced other box office hits, including the Indiana Jones franchise and American Graffiti. It has also been a leader in developing new film technology in special effects, sound, and computer animation, and because of their expertise its subsidiaries often help produce non-Lucasfilm pictures. Lucasfilm is set to move away from films and more into TV, due to rising budgets.[2]
On July 8, 2005, Lucasfilm's marketing, online, and licensing units moved into the new Letterman Digital Arts Center located in the Presidio in San Francisco. It shares the complex with Industrial Light &amp; Magic and LucasArts. They are also best known for The Deep Note and THX.
Lucasfilm has collaborated with the Walt Disney Company and Walt Disney Imagineering numerous times to create rides and attractions centered on Star Wars and Indiana Jones for various Walt Disney Parks and Resort attractions worldwide.</field>
		<field name="user_id">6</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-03 14:40:01</field>
		<field name="modified">2012-04-03 14:40:01</field>
		<field name="source_name">Wikipedia</field>
		<field name="source_url">http://en.wikipedia.org/wiki/Lucasfilm</field>
		<field name="slug">lucasfilm-limited</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">22</field>
		<field name="name">Industrial Light &amp; Magic</field>
		<field name="category_id">3</field>
		<field name="description">Industrial Light &amp; Magic (ILM) is an Academy Award-winning motion picture visual effects company that was founded in May 1975 by George Lucas and is owned by Lucasfilm. Lucas created the company when he discovered that the special effects department at 20th Century Fox was shut down after he was given the green light for his production of the film Star Wars. The studio originated in Van Nuys, California, later moved to San Rafael, and is now based at the Letterman Digital Arts Center in the Presidio of San Francisco. Lynwen Brennan who joined the company in 1999, currently serves as the ILM's President and General Manager.</field>
		<field name="user_id">6</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-03 14:47:16</field>
		<field name="modified">2012-04-03 14:47:16</field>
		<field name="source_name">Wikipedia</field>
		<field name="source_url">http://en.wikipedia.org/wiki/Industrial_Light_%26_Magic</field>
		<field name="slug">industrial-light-magic</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">23</field>
		<field name="name">The Trumbull Company</field>
		<field name="category_id">3</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-04-09 11:16:35</field>
		<field name="modified">2012-04-09 11:16:35</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">the-trumbull-company</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">24</field>
		<field name="name">Digital Fauxtography</field>
		<field name="category_id">3</field>
		<field name="description">Terrence Masson's independent consulting company. </field>
		<field name="user_id">2</field>
		<field name="date_1">1993-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-10 14:24:42</field>
		<field name="modified">2012-04-10 14:36:36</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">digital-fauxtography</field>
		<field name="homepage_url">http://visualfx.com</field>
	</row>
	<row>
		<field name="id">25</field>
		<field name="name">New York Institute of Technology Computer Graphics Lab</field>
		<field name="category_id">3</field>
		<field name="description">In 1974 Dr. Alexander Schure, a wealthy entrepreneur, began to assemble the Computer Graphics Laboratory (CGL) at the New York Institute of Technology. His vision was to create a feature length animated film, with the aid of the days most sophisticated computer graphics techniques. NYIT itself was founded by Dr. Schure, had grounds encompassing numerous estates situated in the beautiful wooded hillsides of Old Westbury New York. Some of these estates were owned by members of the Rockafeller family, who also happened to have a seat on the board of Evans &amp; Sutherland. Because of the close association of E&amp;S with the University of Utah, Dave Evans recommended to Alex to seek out Edwin Catmull to head the new CGL. Ed Catmull had just finished his Ph.D. at Utah and taken a job at a CAD/CAM company called Applicon. It was not a hard sell to get Ed to leave Applicon for NYIT however, so he and fellow Utah graduate Malcolm Blanchard packed their bags for New York. Alvy Ray Smith and David DiFrancesco (both fresh from Xerox PARC) joined the team a few months later in what was called the 3Gerry Mansion2. Alvy and David had heard of Dr. Schure9s plans from Martin Newell at Utah (whom Alex had just hired briefly as a consultant). Dr. Schure h</field>
		<field name="user_id">2</field>
		<field name="date_1">1974-01-01 00:00:00</field>
		<field name="date_2">1986-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-10 15:01:58</field>
		<field name="modified">2012-04-10 15:02:07</field>
		<field name="source_name">CG 101</field>
		<field name="source_url">www.cg101.com</field>
		<field name="slug">new-york-institute-of-technology-computer-graphics-lab</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">26</field>
		<field name="name">Lance Williams</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-04-10 15:10:29</field>
		<field name="modified">2012-04-10 15:10:29</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">lance-williams</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">27</field>
		<field name="name">Northeastern University</field>
		<field name="category_id">3</field>
		<field name="description">www.historyofcg.com was developed at NU in the College of Arts, Media &amp; Design's Creative Industries - Interactive Media Program.</field>
		<field name="user_id">2</field>
		<field name="date_1">1898-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-13 09:06:52</field>
		<field name="modified">2012-10-27 17:49:36</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">northeastern-university</field>
		<field name="homepage_url">http://www.northeastern.edu/ci/</field>
	</row>
	<row>
		<field name="id">28</field>
		<field name="name">Star Wars: Episode VI - Return of the Jedi </field>
		<field name="category_id">2</field>
		<field name="description"></field>
		<field name="user_id">5</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-04-13 13:49:54</field>
		<field name="modified">2012-04-13 13:49:54</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">star-wars-episode-vi-return-of-the-jedi-</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">29</field>
		<field name="name">Homer 3D</field>
		<field name="category_id">2</field>
		<field name="description">A large portion of &quot;Homer3D&quot; was three dimensional and computer animated. Supervising director David Silverman was aiming for something better than the computer animation used in the music video for &quot;Money for Nothing&quot; by Dire Straits.
The animation was provided by Pacific Data Images (PDI). The animators at PDI worked closely with the normal animators on The Simpsons and worked hard not to &quot;reinvent the character[s]&quot;. The Simpsons animators storyboarded the segments and showed the PDI animators how they would have handled the scenes. 
While designing the 3D model of Bart, the animators did not know how they would show Bart's hair. However, they realized that there were vinyl Bart dolls in production and purchased one to use as a model. One of the most difficult parts for the PDI animators was to make Homer and Bart move properly without making them look robotic.
One of the key shots in the segment was where Homer steps into the 3D world and his design transitions into 3D. Bill Oakley considers the shot the &quot;money shot&quot; and had a difficult time communicating his idea to the animators.</field>
		<field name="user_id">5</field>
		<field name="date_1">1995-10-29 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-13 14:40:18</field>
		<field name="modified">2012-10-24 12:29:57</field>
		<field name="source_name">Wikipedia</field>
		<field name="source_url">http://en.wikipedia.org/wiki/Treehouse_of_Horror_VI</field>
		<field name="slug">homer</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">30</field>
		<field name="name">Pacific Data Images ( PDI )</field>
		<field name="category_id">3</field>
		<field name="description">Incorporated in August 1980 by Carl Rosendahl, PDI originally began in a small office in Los Altos. Carl grew up in LA and graduated with a degree in Electrical Engineering from Stanford in 1979. Wanting to combine entertainment with his technical experience, computer graphics seemed a natural solution. Times being what they were (so early in the CG evolution), Carl formed his own company rather than seek employment at one of a very few established companies.
Richard Chuang and Glenn Entiss made it a company of three in 1982. Later, after moving to a Sunnyvale industrial complex until 1984, PDI moved into another larger building owned by Carl's father. They remained there until moving to their present location in Palo Alto in 1997. PDI has grown from employing fewer than 20 people in about 1984 to employing more than 300 today.
</field>
		<field name="user_id">5</field>
		<field name="date_1">1980-08-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-13 14:46:08</field>
		<field name="modified">2012-10-24 12:28:21</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">pacific-data-images-</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">31</field>
		<field name="name">Michelle</field>
		<field name="category_id">1</field>
		<field name="description">fjnsndjshfjksdhjewjfe</field>
		<field name="user_id">4</field>
		<field name="date_1">1989-07-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-04-13 14:51:07</field>
		<field name="modified">2012-04-13 14:51:07</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">michelle</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">32</field>
		<field name="name">Ultima Underworld: The Stygian Abyss</field>
		<field name="category_id">2</field>
		<field name="description">Ultima Underworld: The Stygian Abyss is a first-person role-playing video game (RPG) developed by Blue Sky Productions (later Looking Glass Studios) and published by Origin Systems. Released in March 1992, the game is set in the fantasy world of the Ultima series, and takes place inside the Great Stygian Abyss: a large, underground cave system that contains the remnants of a failed utopian civilization. The player assumes the role of the Avatarâ€”the Ultima series' protagonistâ€”and attempts to find and rescue a baron's kidnapped daughter.
Ultima Underworld has been cited as the first first-person perspective role-playing game with three-dimensional (3D) graphics, and it introduced many technological innovations, such as allowing the player to look up and down. Its design combines simulation elements with concepts from earlier CRPGs, including Wizardry and Dungeon Master; this led the game's designers to label it as a &quot;dungeon simulation&quot;. As such, the game is non-linear and allows for emergent gameplay.</field>
		<field name="user_id">6</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-13 14:56:19</field>
		<field name="modified">2012-04-13 14:56:19</field>
		<field name="source_name">Wikipedia</field>
		<field name="source_url">http://en.wikipedia.org/wiki/Ultima_Underworld:_The_Stygian_Abyss</field>
		<field name="slug">ultima-underworld-the-stygian-abyss</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">33</field>
		<field name="name">People Behind The Pixels</field>
		<field name="category_id">2</field>
		<field name="description">Fall 2011 / Spring 2012</field>
		<field name="user_id">2</field>
		<field name="date_1">2012-04-17 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-17 14:07:42</field>
		<field name="modified">2012-04-17 14:08:13</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">people-behind-the-pixels</field>
		<field name="homepage_url">historyofcg.com</field>
	</row>
	<row>
		<field name="id">34</field>
		<field name="name">Connie</field>
		<field name="category_id">1</field>
		<field name="description">Connie is a designer, front-end developer, and a senior finishing up her time at Northeastern University. Currently working as the design lead in a growing Boston startup, she's also been part of the teams at The Boston Globe, Bionic Hippo, and various other ventures. Her portfolio can be found at www.connie.cc!</field>
		<field name="user_id">3</field>
		<field name="date_1">1989-01-25 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-17 14:12:58</field>
		<field name="modified">2012-04-17 14:31:41</field>
		<field name="source_name">People Behind the Pixel</field>
		<field name="source_url">http://historyofcg.com/about</field>
		<field name="slug">connie</field>
		<field name="homepage_url">www.connie.cc</field>
	</row>
	<row>
		<field name="id">35</field>
		<field name="name">The Incredibles</field>
		<field name="category_id">2</field>
		<field name="description">The Incredibles is a 2004 American computer-animated action comedy superhero film about a family of superheroes who are forced to hide their powers. It was written and directed by Brad Bird, a former director and executive consultant of The Simpsons, and was produced by Pixar and distributed by Walt Disney Pictures. The starring voices are Craig T. Nelson as Bob Parr, Holly Hunter as his wife Helen Parr; Sarah Vowell as their teenage daughter Violet; Spencer Fox as their young son Dash; Jason Lee as the supervillain Syndrome; Samuel L. Jackson as Frozone; and Elizabeth PeÃ±a as Syndrome's beautiful assistant, Mirage. Bob's yearning to help people draws the entire Parr family into a battle with the villain and his killer robot.
The film won the 2004 Annie Award for Best Animated Feature, along with two 2004 Academy Awards, Best Animated Feature and Best Sound Editing. It also received nominations for two other Academy Awards, won the Saturn Award for Best Animated Film, and became the first entirely animated film to win the prestigious Hugo Award for Best Dramatic Presentation. It was also nominated for Best Motion Picture â€“ Musical or Comedy at the 2004 Golden Globes.</field>
		<field name="user_id">6</field>
		<field name="date_1">2004-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-17 14:20:42</field>
		<field name="modified">2012-04-17 14:22:21</field>
		<field name="source_name">Wikipedia</field>
		<field name="source_url">http://en.wikipedia.org/wiki/Incredibles</field>
		<field name="slug">the-incredibles</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">36</field>
		<field name="name">James</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">4</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-17 14:29:29</field>
		<field name="modified">2012-04-17 14:30:57</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">james</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">37</field>
		<field name="name"></field>
		<field name="category_id">4</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1">2012-04-17 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-04-17 14:30:33</field>
		<field name="modified">2012-04-17 14:30:33</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug"></field>
		<field name="homepage_url">oiuahefuhadf.com</field>
	</row>
	<row>
		<field name="id">38</field>
		<field name="name">Interactive Media Capstone 2012</field>
		<field name="category_id">2</field>
		<field name="description"></field>
		<field name="user_id">5</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-04-24 10:50:31</field>
		<field name="modified">2012-04-24 10:50:31</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">interactive-media-capstone-2012</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">39</field>
		<field name="name">ACM</field>
		<field name="category_id">3</field>
		<field name="description">Worlds oldest computing society</field>
		<field name="user_id">2</field>
		<field name="date_1">1947-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-05-16 18:57:10</field>
		<field name="modified">2012-05-16 18:57:10</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">acm</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">40</field>
		<field name="name">Alias Research Inc.</field>
		<field name="category_id">3</field>
		<field name="description">Alias Research Inc., of Toronto, Canada was founded in 1983 by Stephen Bingham, Susan McKenna, David Springer, and Nigel McGrath with the goal of creating software for computer animation for film and video production. Stephen was a television producer, a director for the National Film Theatre of Canada, and an advisor to the government on the use of computer graphics for the visual display of quantitative data. Susan worked as an independent producer in the industrial video and film area and had some experience in fund raising in the industry. Nigel ran a local business, McGrath &amp; Associates that specialized in computer graphic slide production.  David was head of the CG lab at Sheridan College and would lead the software development.  The founders obtained a grant of $61K from National Research Council (NRC), borrowed equipment from McGrath &amp; Associates, and Secured SRTC (Scientific Research Tax Credits) for some funded research work on anti-aliasing that would be needed for their own product, ALIAS/1.

The four principals were soon joined by employeeâ€™s five and six: Will Anielewicz (recently ex of Omnibus and currently at ILM) and Mike Sweeney on software development. It was Will and Mike who, unbeknownst to management, made</field>
		<field name="user_id">2</field>
		<field name="date_1">1983-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 11:50:42</field>
		<field name="modified">2012-08-10 11:51:35</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
		<field name="slug">alias-research-inc</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">41</field>
		<field name="name">Will Anielewicz </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 11:54:30</field>
		<field name="modified">2012-08-10 11:54:30</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">will-anielewicz-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">42</field>
		<field name="name">Andrew Pearce</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 11:58:53</field>
		<field name="modified">2012-08-10 11:58:53</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">andrew-pearce</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">43</field>
		<field name="name">Amiga</field>
		<field name="category_id">2</field>
		<field name="description">The Amiga was a color computer introduced by Commodore Computer in 1985 after beginning development as the Amiga Lorraine. Models included the 500, 1000, 3000, and 4000. Original software including Sculpt-3D, and Deluxe Paint II. </field>
		<field name="user_id">2</field>
		<field name="date_1">1985-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 14:27:39</field>
		<field name="modified">2012-08-10 14:33:51</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
		<field name="slug">amiga</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">44</field>
		<field name="name">John Andrew Berton Jr.</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 14:32:16</field>
		<field name="modified">2012-08-10 14:32:16</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">john-andrew-berton-jr</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">45</field>
		<field name="name">Apple Computer Inc.</field>
		<field name="category_id">3</field>
		<field name="description">Founded by Steven Jobs and Steven Wozniak in 1976, incorporated on Jan. 3rd of 1977. Apple began with the introduction of the Apple I, followed by the Apple II later in 1977 and the Apple III in 1980. While definitely not a computer graphics company, Apple did bring many of the GUI interface, desktop publishing graphics concepts to the masses over the years. </field>
		<field name="user_id">2</field>
		<field name="date_1">1976-04-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 14:38:46</field>
		<field name="modified">2012-08-10 14:38:59</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">apple-computer-inc</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">46</field>
		<field name="name">Xerox PARC ( Palo Alto Research Center )</field>
		<field name="category_id">3</field>
		<field name="description">The Xerox Palo Alto Research Center (PARC) opened on July 1, 1970, in Palo Alto, California, just outside the Stanford University campus.

Although computer graphics was never a goal of PARC per se, Bob Taylor himself was very familiar with this new area of computer science research. He had overseen the Information Processing Techniques Office of ARPA (the Defense Department's Advanced Research Project Agency), which funded many early university graduate programs such as Dave Evans' graduate program at the University of Utah back in 1965.
The person who brought CG research to PARC under Taylor was Dr. Richard Shoup of Carnegie Mellon University. Shoup had been at the short-lived Berkeley Computer Company (BCC) from 1968 to 1970 and was given a full year upon starting at PARC to explore what it was he wanted to do. What he ended up doing was developing SuperPaint. Along with artist Alvy Ray Smith, Shoup experimented, designed, and built the first digital paint system with a non-random access, 8-bit framebuffer.
</field>
		<field name="user_id">2</field>
		<field name="date_1">1970-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 14:40:58</field>
		<field name="modified">2012-10-27 18:18:21</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">xerox-parc</field>
		<field name="homepage_url">www.parc.com</field>
	</row>
	<row>
		<field name="id">47</field>
		<field name="name">Atari</field>
		<field name="category_id">3</field>
		<field name="description">Video game manufacturer founded in 1972 by Nolan Bushnell (B.S. University of Utah 1969) and sold to Warner Inc. in 1976. With the introduction of Pong (also created by Nolan Bushnell), a simple ball and paddle style video game, Atari led the video game revolution of the late 70s and early 80s before falling on hard times. </field>
		<field name="user_id">2</field>
		<field name="date_1">1972-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 14:51:11</field>
		<field name="modified">2012-08-10 14:51:19</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">atari</field>
		<field name="homepage_url">www.atari.com</field>
	</row>
	<row>
		<field name="id">48</field>
		<field name="name">Blue Sky Studios</field>
		<field name="category_id">3</field>
		<field name="description">Blue Sky was founded in May of 1987 by six people. (in alphabetical order) Alison Brown(Administration), David Brown(President), Michael Ferraro(Systems Architect), Carl Ludwig(VP of R&amp;D), Dr. Eugene Troubetskoy(Chief Scientist), and Chris Wedge(vice president of creative Development). 
Other early key employees included Jan CarlÃ©e (Animation Director) and Tom Bisogno. 
</field>
		<field name="user_id">2</field>
		<field name="date_1">1987-02-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 14:56:52</field>
		<field name="modified">2012-08-10 15:00:16</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">blue-sky-studios</field>
		<field name="homepage_url">http://blueskystudios.com</field>
	</row>
	<row>
		<field name="id">49</field>
		<field name="name">Dr. Eugene Troubetskoy</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 14:57:26</field>
		<field name="modified">2012-08-10 14:57:26</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">dr-eugene-troubetskoy</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">50</field>
		<field name="name">Carl Ludwig</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 14:57:55</field>
		<field name="modified">2012-08-10 14:57:55</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">carl-ludwig</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">51</field>
		<field name="name">Chris Wedge</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 14:58:30</field>
		<field name="modified">2012-08-10 14:58:30</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">chris-wedge</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">52</field>
		<field name="name">Bo Gehring Associates </field>
		<field name="category_id">3</field>
		<field name="description">Louis (Bo) Gehring began work at Magi in 1972, starting the Synthavision division with Bob Goldstein. While there, Bo created several CG tests for Steven Spielberg's Close Encounters of the Third Kind, before the idea was dropped in favor of Doug Trumbullâ€™s traditional miniature and practical effects approach.
Instead of returning to NY and Magi, Bo stayed in LA and originally formed his company as Gehring Aviation in 1977. Based on his experience with computer controlled machine tools, he sought to capitalize on the new need for computer driven motion control cameras for visual effects work.</field>
		<field name="user_id">2</field>
		<field name="date_1">1977-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 15:04:24</field>
		<field name="modified">2012-08-10 15:04:34</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
		<field name="slug">bo-gehring-associates-</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">53</field>
		<field name="name">Bo Gehring</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 15:06:22</field>
		<field name="modified">2012-08-10 15:06:22</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">bo-gehring</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">54</field>
		<field name="name">Buf Campagne</field>
		<field name="category_id">3</field>
		<field name="description">Pierre Buffin and Henry Seydoux founded B.S.C.A (Buffin Seydoux Computer Animation) in 1982.  In 1988, they finished a 6 minute 3D animation about insects living in a computer, The first &quot;long animation&quot; in France. Other early employees were Patrick Albert, Olivier Gilbert ,Georges Lagardere, Francois Blanchet, Christian Zumbiehl and Matthieu Schonholzer.</field>
		<field name="user_id">2</field>
		<field name="date_1">1982-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 15:18:50</field>
		<field name="modified">2012-08-10 15:19:01</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">buf-campagne</field>
		<field name="homepage_url">www.buf.fr</field>
	</row>
	<row>
		<field name="id">55</field>
		<field name="name">Cambridge Animation</field>
		<field name="category_id">3</field>
		<field name="description">Andrew Berend set up Cambridge Animation with partner Peter Florence in 1987 [ ADDITIONAL INFORMATION NEEDED ]</field>
		<field name="user_id">2</field>
		<field name="date_1">1987-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 15:27:05</field>
		<field name="modified">2012-08-10 15:27:14</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">cambridge-animation</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">56</field>
		<field name="name">Computer Creations</field>
		<field name="category_id">3</field>
		<field name="description">Tom Klimek headed the company, located in the unlikely location of Southbend Indiana (Jim Lindner was NY sales rep, Gail Resnik was an employee.) Jim Lindner and Suazanne Gavril, former marketing executives at Xerox, later broke with Computer Creations and formed Fantastic Animation Machine in Manhattan. </field>
		<field name="user_id">2</field>
		<field name="date_1">1982-01-01 00:00:00</field>
		<field name="date_2">1987-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 15:29:23</field>
		<field name="modified">2012-08-10 15:31:12</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">computer-creations</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">57</field>
		<field name="name">Jim Lindner</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 15:37:53</field>
		<field name="modified">2012-08-10 15:37:53</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">jim-lindner</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">58</field>
		<field name="name">Computer Film Company </field>
		<field name="category_id">3</field>
		<field name="description">Founded in 1984 by Andrew Berend, Mike Boudry, and Nick Pollock. Andrew come from a motion-control background and had previously formed Computer FX Ltd. and worked for the Moving Picture Company. Mike was the hardware guy, and Nick was software. Neil Harris joined in 1986 as a software programmer also.
	The intent at CFC from the very beginning was full frame digital manipulation and compositing of live action footage. This was a unique charter among startup CG facilities, that is not to be primarily concerned with vector or raster computer generated imagery.
</field>
		<field name="user_id">2</field>
		<field name="date_1">1984-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 15:41:00</field>
		<field name="modified">2012-08-10 15:47:29</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
		<field name="slug">computer-film-company-</field>
		<field name="homepage_url">www.framestore-cfc.com</field>
	</row>
	<row>
		<field name="id">59</field>
		<field name="name">Mike Boudry</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 15:42:40</field>
		<field name="modified">2012-08-10 15:42:40</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">mike-boudry</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">60</field>
		<field name="name">Andrew Berend</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 15:43:30</field>
		<field name="modified">2012-08-10 15:43:30</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">andrew-berend</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">61</field>
		<field name="name">Nick Pollock</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 15:43:50</field>
		<field name="modified">2012-08-10 15:43:50</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">nick-pollock</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">62</field>
		<field name="name">Framestore</field>
		<field name="category_id">3</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 15:47:18</field>
		<field name="modified">2012-08-10 15:47:18</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">framestore</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">63</field>
		<field name="name">STAR (Scene Tracking Auto Registration)</field>
		<field name="category_id">2</field>
		<field name="description">STAR (Scene Tracking Auto Registration) automatic scene-tracking â€œElectronic Rotoscopingâ€ system. Conceived by Bo and written by non-other than Jim Clark of SGI fame,(with the front end written by Bo himself) the technique was based upon discussions Bo had with others while at Magi as early as 1974. </field>
		<field name="user_id">2</field>
		<field name="date_1">1983-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 15:51:15</field>
		<field name="modified">2012-08-10 15:54:59</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">star-scene-tracking-auto-registration</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">64</field>
		<field name="name">James ( Jim ) Clark</field>
		<field name="category_id">1</field>
		<field name="description">Jim Clark, founder of Silicon Graphics, went on to found Netscape Communications Corporation with Marc Andreessen, the Web's first, most popular graphical browser. Netscape was acquired by AOL in November 1998 for $4.1 billion (yes, that's billion with a &quot;b&quot;)</field>
		<field name="user_id">2</field>
		<field name="date_1">1944-03-23 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 15:58:00</field>
		<field name="modified">2012-10-25 10:31:16</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">jim-clark</field>
		<field name="homepage_url">http://en.wikipedia.org/wiki/James_H._Clark</field>
	</row>
	<row>
		<field name="id">65</field>
		<field name="name">Computer FX Ltd. </field>
		<field name="category_id">3</field>
		<field name="description">Computer FX Ltd. (later called CFX Ltd, and today called CFX Associates.) was formed by Andrew Berend, Ian Chisholm and Craig Zerouni in 1982. They began by purchasing the first IMI (Interactive Machines Inc) vector display device, a real-time, monochrome, vector device which competed with E&amp;S products. (PDI may have bought the second IMI, or possibly the other way around) This was the first real-time animation system in Europe. </field>
		<field name="user_id">2</field>
		<field name="date_1">1982-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 16:03:21</field>
		<field name="modified">2012-08-10 16:07:40</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">computer-fx-ltd-</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">66</field>
		<field name="name">Computer FX Ltd. </field>
		<field name="category_id">3</field>
		<field name="description">Computer FX Ltd. (later called CFX Ltd, and today called CFX Associates.) was formed by Andrew Berend, Ian Chisholm and Craig Zerouni in 1982. They began by purchasing the first IMI (Interactive Machines Inc) vector display device, a real-time, monochrome, vector device which competed with E&amp;S products. (PDI may have bought the second IMI, or possibly the other way around) This was the first real-time animation system in Europe. </field>
		<field name="user_id">2</field>
		<field name="date_1">1982-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 16:03:23</field>
		<field name="modified">2012-08-10 16:03:23</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">computer-fx-ltd-</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">67</field>
		<field name="name">Craig Zerouni</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 16:05:14</field>
		<field name="modified">2012-08-10 16:05:14</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">craig-zerouni</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">68</field>
		<field name="name">Ian Chisholm</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 16:05:31</field>
		<field name="modified">2012-08-10 16:05:31</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">ian-chisholm</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">69</field>
		<field name="name">Computer Graphics Laboratory Inc. </field>
		<field name="category_id">3</field>
		<field name="description">The commercial production company set up by the NYIT Computer Graphics Lab. The reason it was created was because NYIT would have jeopardized its non-taxable status if its computer graphics lab (as distinguished from CGL Inc.) had engaged in major commercial projects. </field>
		<field name="user_id">2</field>
		<field name="date_1">1981-01-01 00:00:00</field>
		<field name="date_2">1992-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 16:52:18</field>
		<field name="modified">2012-08-10 16:54:12</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">computer-graphics-laboratory-inc-</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">70</field>
		<field name="name">Pat Hanrahan </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 16:52:59</field>
		<field name="modified">2012-08-10 16:52:59</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">pat-hanrahan-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">71</field>
		<field name="name">Ken Wesley</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 16:53:54</field>
		<field name="modified">2012-08-10 16:53:54</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">ken-wesley</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">72</field>
		<field name="name">Computer Image Corporation </field>
		<field name="category_id">3</field>
		<field name="description">Based in Denver, CIC was the brainchild of Lee Harrison , and was in the business of making &quot;analog computer graphics&quot; in the early 1970s. These unique machines included Animac, CAESAR and Scanimate. Lee received the first ever Emmy for &quot;Technical Achievement&quot; in 1973 for his work. Lee Harrison passed away in 1998.</field>
		<field name="user_id">2</field>
		<field name="date_1">1970-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 16:57:12</field>
		<field name="modified">2012-08-10 16:57:20</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">computer-image-corporation-</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">73</field>
		<field name="name">Lee Harrison </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 16:57:50</field>
		<field name="modified">2012-08-10 16:57:50</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">lee-harrison-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">74</field>
		<field name="name">Kirk Paulson</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 16:59:46</field>
		<field name="modified">2012-08-10 16:59:46</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">kirk-paulson</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">75</field>
		<field name="name">Phil Zimmerman</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 17:00:01</field>
		<field name="modified">2012-08-10 17:00:01</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">phil-zimmerman</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">76</field>
		<field name="name">Jim Johnson</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 17:00:26</field>
		<field name="modified">2012-08-10 17:00:26</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">jim-johnson</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">77</field>
		<field name="name">Cranston/Csuri Productions </field>
		<field name="category_id">3</field>
		<field name="description">Cranston-Csuri was founded in August of 1981 by Charles Csuri or Ohio State and investor Robert Kanuth of The Cranston Companies. Jim Kristoff (also a past Treasurer of Ohio State) came with Kanuth and served as president, while Wayne Carlson of Ohio State was VP and head of R&amp;D. Michael Collery was Director of Animation, Don Stredney developed the medical imaging market and Dr. Tom Linehan devloped the educational market. Along with Shawn Ho (rendering), Paul Sidlo (Creative Director) and Bob Marshal, the first employees numbered about ten total.</field>
		<field name="user_id">2</field>
		<field name="date_1">1991-08-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 17:02:33</field>
		<field name="modified">2012-08-10 17:10:44</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">cranston-csuri-productions-</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">78</field>
		<field name="name">Charles Csuri</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 17:03:35</field>
		<field name="modified">2012-08-11 14:00:40</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">charles-csuri</field>
		<field name="homepage_url">http://www.csurivision.com</field>
	</row>
	<row>
		<field name="id">79</field>
		<field name="name">Jim Kristoff </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 17:05:23</field>
		<field name="modified">2012-08-10 17:05:23</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">jim-kristoff-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">80</field>
		<field name="name">Paul Sidlo </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 17:08:23</field>
		<field name="modified">2012-08-10 17:08:23</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">paul-sidlo-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">81</field>
		<field name="name">RezN8</field>
		<field name="category_id">3</field>
		<field name="description">Founded by Paul Sidlo and Evan Ricks. Paul Sidlo was Creative Director for Cranston/Csuri Productions from 1982 to 1987.
reZn8 has won countless awards for broadcast design and animation including three Emmys. Its unique dedication to original creative content has earned the company a unique and respected reputation. </field>
		<field name="user_id">2</field>
		<field name="date_1">1987-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 17:12:16</field>
		<field name="modified">2012-10-24 14:21:45</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">rezn8</field>
		<field name="homepage_url">www.rezn8.com</field>
	</row>
	<row>
		<field name="id">82</field>
		<field name="name">Evan Ricks</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 17:13:44</field>
		<field name="modified">2012-08-10 17:13:44</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">evan-ricks</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">83</field>
		<field name="name">Michael Collery</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 17:15:27</field>
		<field name="modified">2012-08-10 17:15:27</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">michael-collery</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">84</field>
		<field name="name">Jeff Light </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 17:16:10</field>
		<field name="modified">2012-08-10 17:16:10</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">jeff-light-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">85</field>
		<field name="name">Dobbie Schiff </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 17:17:03</field>
		<field name="modified">2012-08-10 17:17:03</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">dobbie-schiff-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">86</field>
		<field name="name">Thomas Linehan</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 17:40:07</field>
		<field name="modified">2012-08-10 17:40:07</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">thomas-linehan</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">87</field>
		<field name="name">Julian Gomez </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 17:40:35</field>
		<field name="modified">2012-08-10 17:40:35</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">julian-gomez-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">88</field>
		<field name="name">Wayne Carlson </field>
		<field name="category_id">1</field>
		<field name="description">Wayne Carlson has been on the faculty at OSU since 1988 and is an Associate Professor in the Department of Industrial Design with joint appointments in Art, Art Education, and Computer and Information Science. He also is currently the Director of the ACCAD. </field>
		<field name="user_id">2</field>
		<field name="date_1">1949-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 17:41:10</field>
		<field name="modified">2012-10-24 11:11:41</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">wayne-carlson-</field>
		<field name="homepage_url">http://design.osu.edu/carlson/WEC.html</field>
	</row>
	<row>
		<field name="id">89</field>
		<field name="name">Scott Dyer </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 17:41:45</field>
		<field name="modified">2012-08-10 17:41:45</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">scott-dyer-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">90</field>
		<field name="name">deGraf/Wahrman Inc.</field>
		<field name="category_id">3</field>
		<field name="description">Formed as a partnership in October of 1987 and incorporated in 1988 by Brad deGraf and Michael Wahrman. Additional funding assistance by Tom McMahon (Symbolics Graphics Division). </field>
		<field name="user_id">2</field>
		<field name="date_1">1987-10-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 17:43:48</field>
		<field name="modified">2012-08-10 17:46:40</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">degraf-wahrman-inc</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">91</field>
		<field name="name">Brad deGraf</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 17:44:16</field>
		<field name="modified">2012-08-10 17:44:16</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">brad-degraf</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">92</field>
		<field name="name">Michael Wahrman </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 17:44:43</field>
		<field name="modified">2012-08-10 17:44:43</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">michael-wahrman-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">93</field>
		<field name="name">DemoGraFX</field>
		<field name="category_id">3</field>
		<field name="description">Research and technology company formed by Gary Demos after leaving the Whitney/Demos bankruptcy. Began with contract work for various projects, including setting up the original Triple-I Digital Film Printer (DFP) at Pacific Title in 91, connecting it via HPPI to an SGI network. </field>
		<field name="user_id">2</field>
		<field name="date_1">1988-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 17:54:11</field>
		<field name="modified">2012-08-10 17:56:21</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">demografx</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">94</field>
		<field name="name">Gary Demos</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 17:54:43</field>
		<field name="modified">2012-08-10 17:54:43</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">gary-demos</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">95</field>
		<field name="name">Digital Effects</field>
		<field name="category_id">3</field>
		<field name="description">Founded by Judson Rosebush and Jeff Kleiser (Kleiser was Animation Director and President), along with Don Leitch, David Cox, Moses Weitzman, Jann Printz and Bob Hoffman (who was later at Omnibus and RGA). Digital Effects was one of four companies to create CG for the film TRON. They producing the opening title sequence where pieces of TRON fly in over a bright light source to form his body, and also did all the scenes involving the flying cuboid character â€œBitâ€ who could say yes or no.</field>
		<field name="user_id">2</field>
		<field name="date_1">1978-01-01 00:00:00</field>
		<field name="date_2">1986-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 17:58:17</field>
		<field name="modified">2012-08-10 17:59:55</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">digital-effects</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">96</field>
		<field name="name">Judson Rosebush </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 17:58:39</field>
		<field name="modified">2012-08-10 17:58:39</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">judson-rosebush-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">97</field>
		<field name="name">Jeff Kleiser </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 17:59:00</field>
		<field name="modified">2012-08-10 17:59:00</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">jeff-kleiser-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">98</field>
		<field name="name">Digital Pictures</field>
		<field name="category_id">3</field>
		<field name="description">Digital Pictures was co-founded by Chris Briscoe and Paul Brown in 1980 as the UK's first specialist computer animation company. Liam Scanlan was the first employee, and Peter Florence and Steve Lowe soon joined as co-directors.</field>
		<field name="user_id">2</field>
		<field name="date_1">1980-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 18:01:48</field>
		<field name="modified">2012-08-10 18:07:07</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">digital-pictures</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">99</field>
		<field name="name">Kim Aldis</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 18:03:49</field>
		<field name="modified">2012-08-10 18:03:49</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">kim-aldis</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">100</field>
		<field name="name">Paul Brown </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 18:05:37</field>
		<field name="modified">2012-08-10 18:05:37</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">paul-brown-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">101</field>
		<field name="name">Liam Scanlan </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 18:05:55</field>
		<field name="modified">2012-08-10 18:05:55</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">liam-scanlan-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">102</field>
		<field name="name">Steve Lowe </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 18:06:26</field>
		<field name="modified">2012-08-10 18:06:26</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">steve-lowe-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">103</field>
		<field name="name">Peter Florence </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 18:06:50</field>
		<field name="modified">2012-08-10 18:06:50</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">peter-florence-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">104</field>
		<field name="name">Digital Productions</field>
		<field name="category_id">3</field>
		<field name="description">Digital Productions was formed in 1981 by Gary Demos and John Whitney Jr., having just left Triple-I right before the Tron work began production there. Elsa Granville was employee number three and the Director of Human Resources, Brad deGraf (Head of Production) and Larry Yaeger (Director/VP of Software) were hired very soon thereafter. Producers included Sherry McKenna and Nancy St.John. Jim Rapley and Art Durinski joined DP after having worked on Tron at Triple-I. </field>
		<field name="user_id">2</field>
		<field name="date_1">1981-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 19:03:35</field>
		<field name="modified">2012-08-10 19:03:44</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">digital-productions</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">105</field>
		<field name="name">John Whitney Jr.</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 19:04:34</field>
		<field name="modified">2012-10-29 15:11:26</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">john-whitney-jr</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">106</field>
		<field name="name">David Sieg </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 19:06:41</field>
		<field name="modified">2012-10-28 12:05:11</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">david-sieg-</field>
		<field name="homepage_url">http://www.davesieg.com/</field>
	</row>
	<row>
		<field name="id">107</field>
		<field name="name">The Last Starfighter</field>
		<field name="category_id">2</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 19:11:43</field>
		<field name="modified">2012-08-10 19:11:43</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">the-last-starfighter</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">108</field>
		<field name="name">Paul Isaacs</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 19:12:53</field>
		<field name="modified">2012-08-10 19:12:53</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">paul-isaacs</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">109</field>
		<field name="name">Kevin Rafferty</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 19:17:25</field>
		<field name="modified">2012-08-10 19:17:25</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">kevin-rafferty</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">110</field>
		<field name="name">Dune</field>
		<field name="category_id">2</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 19:18:37</field>
		<field name="modified">2012-08-10 19:18:37</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">dune</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">111</field>
		<field name="name">Labyrinth</field>
		<field name="category_id">2</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 19:19:05</field>
		<field name="modified">2012-08-10 19:19:05</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">labyrinth</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">112</field>
		<field name="name">Emily Nagle Green</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 19:19:49</field>
		<field name="modified">2012-08-10 19:19:49</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">emily-nagle-green</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">113</field>
		<field name="name">CG101: A Computer Graphics Industry Reference</field>
		<field name="category_id">2</field>
		<field name="description">CG101 is the only comprehensive resource guide written in plain language for all levels of computer graphics users. It is also the first and only detailed behind-the-scenes history about the people and companies that have formed today's industry. Hundreds of contributors and in-depth interviews give a never-before-seen look into the earliest years of CG right up to present day. In addition to the historical perspective, CG 101 includes detailed tips and tricks, demo reel guidelines and CG job descriptions to help those looking to get into the business. </field>
		<field name="user_id">2</field>
		<field name="date_1">2007-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 19:59:48</field>
		<field name="modified">2012-08-10 20:08:04</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">cg101-a-computer-graphics-industry-reference</field>
		<field name="homepage_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">114</field>
		<field name="name">Electric Image </field>
		<field name="category_id">3</field>
		<field name="description">Paul Docherty left his position as Head of Graphics at Londonâ€™s leading post house Molinare and set up Electric Image in 1983. The company was funded by private shareholders, a number of which were previously Pauls clients. Paul and his then Technical Director Stewart McEwan (who Paul had hired out of Molinare) spent two years producing real time video based animation for the television market on Dubner equipment. </field>
		<field name="user_id">2</field>
		<field name="date_1">1983-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-11 14:02:53</field>
		<field name="modified">2012-08-11 14:23:35</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">electric-image-</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">115</field>
		<field name="name">Paul Docherty </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-11 14:04:21</field>
		<field name="modified">2012-08-11 14:04:21</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">paul-docherty-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">116</field>
		<field name="name">Stewart McEwan </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-11 14:05:15</field>
		<field name="modified">2012-08-11 14:05:15</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">stewart-mcewan-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">117</field>
		<field name="name">Simon Maddocks </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-11 14:14:15</field>
		<field name="modified">2012-08-11 14:14:15</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">simon-maddocks-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">118</field>
		<field name="name">David Benson</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-11 14:14:51</field>
		<field name="modified">2012-08-11 14:14:51</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">david-benson</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">119</field>
		<field name="name">Evans &amp; Sutherland </field>
		<field name="category_id">3</field>
		<field name="description">Incorporated in 1968 by Dave Evans and Ivan Sutherland, E&amp;S was the first computer graphics company ever formed. Based in Salt Lake City Utah, E&amp;S produced vector graphics workstations initially for military flight simulator use, but later for many commercial companies as well such as Robert Abelâ€™s and Cranston/Csuri. </field>
		<field name="user_id">2</field>
		<field name="date_1">1968-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-11 14:28:53</field>
		<field name="modified">2012-08-11 14:32:00</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">evans-sutherland-</field>
		<field name="homepage_url">www.es.com</field>
	</row>
	<row>
		<field name="id">120</field>
		<field name="name">Dave Evans </field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-11 14:30:50</field>
		<field name="modified">2012-08-11 14:30:50</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">dave-evans-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">121</field>
		<field name="name">Ivan Sutherland</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-11 14:31:12</field>
		<field name="modified">2012-08-11 14:31:12</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">ivan-sutherland</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">122</field>
		<field name="name">Ex Machina</field>
		<field name="category_id">3</field>
		<field name="description">Ex Machina was created in 1989 with the merger of two French CG production companies: Sogitec and the production division of Thomson Digital Image (TDI). With the born of Ex Machina, TDI itself then continued only involved in developing the Explore Software. 
Ex Machina has been involved in many different areas of CG production, both commercials and films including all formats ( Imax, 70/35mm, stereo, HVISION, etc.). Clients were mainly from Europe and Japan, with most of the large  format films, such as IMAX, being produced for North American clients.
</field>
		<field name="user_id">2</field>
		<field name="date_1">1989-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-11 15:48:46</field>
		<field name="modified">2012-08-11 15:52:24</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">ex-machina</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">123</field>
		<field name="name">Sogitec</field>
		<field name="category_id">3</field>
		<field name="description">The Ministere de la Culture, managed by Jack Lang, gave some funds to start new CG technologies in France. Sogitec is a big industrial group that acts mainly in the military field as part of Dassault Electronic. The Sogitec CG department was created in 1982â€“83 by Xavier Nicolas, Daniel Poiroux, and Alain Grach to try to create images using a customized version of a flight-simulator software. </field>
		<field name="user_id">2</field>
		<field name="date_1">1982-01-01 00:00:00</field>
		<field name="date_2">1989-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-11 15:49:27</field>
		<field name="modified">2012-10-25 11:51:49</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">sogitec</field>
		<field name="homepage_url">http://www.sogitec.com/</field>
	</row>
	<row>
		<field name="id">124</field>
		<field name="name">Thomson Digital Image ( TDI )</field>
		<field name="category_id">3</field>
		<field name="description">The Institut national de l'audiovisuel (INA) was interested in computer graphics and associated themselves with the French defense contractor Thompson CSF to create the Paris-based Thomson Digital Image. Managed by Pascal Bap and Jean Charles Hourcade, TDI developed the 3D animation software Explore and also did production work.</field>
		<field name="user_id">2</field>
		<field name="date_1">1984-01-01 00:00:00</field>
		<field name="date_2">1989-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-11 15:49:49</field>
		<field name="modified">2012-10-25 13:53:15</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">thomson-digital-image</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">125</field>
		<field name="name">Fantastic Animation Machine</field>
		<field name="category_id">3</field>
		<field name="description">Jim Lindner and Suazanne Gavril, former marketing executives at Xerox, broke with Computer Creations, and formed Fantastic Animation Machine in Manhattan, making animations chiefly with a 32-bit Ridge microcomputer, on proprietary software (C &amp; UNIX).</field>
		<field name="user_id">2</field>
		<field name="date_1">1983-01-01 00:00:00</field>
		<field name="date_2">1992-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-11 15:56:31</field>
		<field name="modified">2012-08-11 15:56:41</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">fantastic-animation-machine</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">126</field>
		<field name="name">Suzanne Gavril</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-11 15:58:22</field>
		<field name="modified">2012-08-11 15:58:22</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">suzanne-gavril</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">127</field>
		<field name="name">Image West</field>
		<field name="category_id">3</field>
		<field name="description">Image West was based around analog video animation equipment such as the Scanimate, which manipulated video imagery and captured artwork. Cliff Brown was president and David Sieg was Chief Engineer. Animators included Peter Koczera, Ed Kramer, Russ Maehl and Roy Weinstock. Image West Art Directors were Sonny King, Henry Kline II and Gary McKinnon.</field>
		<field name="user_id">2</field>
		<field name="date_1">1972-01-01 00:00:00</field>
		<field name="date_2">1985-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 14:19:24</field>
		<field name="modified">2012-08-16 14:30:14</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">image-west</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">128</field>
		<field name="name">Cliff Brown</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-16 14:23:32</field>
		<field name="modified">2012-08-16 14:23:32</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">cliff-brown</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">129</field>
		<field name="name">Ed Kramer</field>
		<field name="category_id">1</field>
		<field name="description">Ed Kramer has a B.S. in psychology from Duke University (1977) and an M.A. in film production from The University of Texas (1980). He was one of the last Scanimate animators, but he has been among the first to use many video tools for production including the ADO, Via Video, and Quantel paint systems, System IV, Bosch FGS-4000, Abekas, Wavefront, and digital videotape. He has worked for video facilities in Hollywood, New York, and Atlanta and for NASA in Houston. He has written about video animation and has chaired courses at SIGGRAPH. His film work includes the LUXOR project for Douglas Trumbull and as a Sequence Supervisor at Industrial Light &amp; Magic for Clear and Present Danger, Jumanji, Twister, 101 Dalmatians, The Lost World, Deep Impact, and Star Wars: The Phantom Menace. He lives in Colorado with his wife, Kim, and daughter, Hannah.</field>
		<field name="user_id">2</field>
		<field name="date_1">1955-04-30 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 14:24:18</field>
		<field name="modified">2012-10-28 12:03:43</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">ed-kramer</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">130</field>
		<field name="name">Peter Koczera</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-16 14:24:44</field>
		<field name="modified">2012-08-16 14:24:44</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">peter-koczera</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">131</field>
		<field name="name">Roy Weinstock</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-16 14:25:13</field>
		<field name="modified">2012-08-16 14:25:13</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">roy-weinstock</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">132</field>
		<field name="name">Gary McKinnon</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-16 14:26:02</field>
		<field name="modified">2012-08-16 14:26:02</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">gary-mckinnon</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">133</field>
		<field name="name">Sonny King</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-16 14:26:23</field>
		<field name="modified">2012-08-16 14:26:23</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">sonny-king</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">134</field>
		<field name="name">Scott Ross</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-16 14:42:34</field>
		<field name="modified">2012-08-16 14:42:34</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">scott-ross</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">135</field>
		<field name="name">Information International Inc. </field>
		<field name="category_id">3</field>
		<field name="description">The company was originally founded to create image processing equipment and digital image scanners. Management (Al Fenaughty and Terry Taugner) brought John Whitney Jr and Gary Demos over from Evans &amp; Sutherland to form a â€œmovie groupâ€ in an attempt to cut their losses after a major failed government contract bid. John Whitney Jr. had been initially introduced to Triple-I because his father (John Sr.) knew Triple-Iâ€™s founder Ed Fredkin. </field>
		<field name="user_id">2</field>
		<field name="date_1">1975-01-01 00:00:00</field>
		<field name="date_2">1982-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 14:49:28</field>
		<field name="modified">2012-08-16 15:08:29</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">information-international-inc-</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">136</field>
		<field name="name">Craig Reynolds</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-16 14:55:28</field>
		<field name="modified">2012-08-16 14:55:28</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">craig-reynolds</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">137</field>
		<field name="name">Japan Computer Graphics Lab </field>
		<field name="category_id">3</field>
		<field name="description">In 1978, Mits Kaneko of MK Company obtained from MGM Studios the animation rights to Marjorie Keenan Rollings' Pulitzer awarded &quot;The Yearling&quot;. Mits Kaneko decided to use computer animation on the 52 episodes of 30 minute television series because of rapidly rising cost of animation artists and film recording process. After two year's development and artist training, in April of 1980, JCGL was established with Mits Kaneko, Toho Company(a movie distribution company), Kodansha (a book publishing company), Toppan (a printing company) and Telework (a television production company) .. 38 artists, 4 programmers and 3 hardware maintenance persons. </field>
		<field name="user_id">2</field>
		<field name="date_1">1980-01-01 00:00:00</field>
		<field name="date_2">1987-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 15:39:13</field>
		<field name="modified">2012-08-16 15:41:28</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">japan-computer-graphics-lab-</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">138</field>
		<field name="name">Mits Kaneko</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-16 15:42:03</field>
		<field name="modified">2012-08-16 15:42:03</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">mits-kaneko</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">139</field>
		<field name="name">Kleiser Walczak Construction Company</field>
		<field name="category_id">3</field>
		<field name="description">One of the first Wavefront based production companies, KWCC was founded in 1987 by Jeff Kleiser and Diana Walczak.
Jeff Kleiser went to Colgate University as a CG major using VISIONS, an early fortran code from Syracuse. He made several experimental films and a few commercials by outputting to a DEC Graphics display terminal and shooting 35mm film off the screen. He then moved from Dolphin Productions (1976-77) as a Scanimate operator, Digital Effects (1978-1986) as Animation Director and President, then to Omnibus as Director of the Motion Picture Special Effects Division in LA. 
Diana Walczak was a sculptor and CG enthusiast from Boston University who met Jeff while at SIGGRAPH 1985, and joined him at Omnibus for a Marvel Comics character test in 1986. Dianaâ€™s sculptures would be digitized into the computer a section at a time in order to have separate animatable pieces.
</field>
		<field name="user_id">2</field>
		<field name="date_1">1987-01-01 00:00:00</field>
		<field name="date_2">2004-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 16:11:00</field>
		<field name="modified">2012-08-16 16:21:40</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">kleiser-walczak-construction-company</field>
		<field name="homepage_url">http://www.synthespianstudios.net</field>
	</row>
	<row>
		<field name="id">140</field>
		<field name="name">Kleiser Walczak Construction Company</field>
		<field name="category_id">3</field>
		<field name="description">One of the first Wavefront based production companies, KWCC was founded in 1987 by Jeff Kleiser and Diana Walczak.
Jeff Kleiser went to Colgate University as a CG major using VISIONS, an early fortran code from Syracuse. He made several experimental films and a few commercials by outputting to a DEC Graphics display terminal and shooting 35mm film off the screen. He then moved from Dolphin Productions (1976-77) as a Scanimate operator, Digital Effects (1978-1986) as Animation Director and President, then to Omnibus as Director of the Motion Picture Special Effects Division in LA. 
Diana Walczak was a sculptor and CG enthusiast from Boston University who met Jeff while at SIGGRAPH 1985, and joined him at Omnibus for a Marvel Comics character test in 1986. Dianaâ€™s sculptures would be digitized into the computer a section at a time in order to have separate animatable pieces.
</field>
		<field name="user_id">2</field>
		<field name="date_1">1987-01-01 00:00:00</field>
		<field name="date_2">2005-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-16 16:11:02</field>
		<field name="modified">2012-08-16 16:11:02</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">kleiser-walczak-construction-company</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">141</field>
		<field name="name">Diana Walczak</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-16 16:17:25</field>
		<field name="modified">2012-08-16 16:17:25</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">diana-walczak</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">142</field>
		<field name="name">Synthespian Studios</field>
		<field name="category_id">3</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-16 16:18:12</field>
		<field name="modified">2012-08-16 16:18:12</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">synthespian-studios</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">143</field>
		<field name="name">Frank Vitz</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-16 16:20:59</field>
		<field name="modified">2012-08-16 16:20:59</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">frank-vitz</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">144</field>
		<field name="name">Kroyer Films</field>
		<field name="category_id">3</field>
		<field name="description">Kroyer Films was founded by Bill and Sue Kroyer in 1986, just before DOA went out of business. The company specialized in the use of 3D computer graphics, plotted out on paper as hidden surface line art to be colored and used along with traditionally created cel animation. Output was on an HP plotter, hooked up to an SGI 3130. (A mach</field>
		<field name="user_id">2</field>
		<field name="date_1">1986-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 16:24:00</field>
		<field name="modified">2012-08-17 14:39:00</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">kroyer-films</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">145</field>
		<field name="name">Bill Kroyer</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-16 16:24:38</field>
		<field name="modified">2012-08-16 16:24:38</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">bill-kroyer</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">146</field>
		<field name="name">Sue Kroyer</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-16 16:24:57</field>
		<field name="modified">2012-08-16 16:24:57</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">sue-kroyer</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">147</field>
		<field name="name">Lamb &amp; Company</field>
		<field name="category_id">3</field>
		<field name="description">Larry Lamb was President of Lamb &amp; Company and its affiliated software company, LambSoft. A pioneer in the world of 3D animation and computer graphics production, he founded Lamb &amp; Company in 1980 and has been at the forefront of innovation in technology development for computer animation and digital effects for advertising and broadcast for close to two decades. His contributions to the industry include both early adoption and testing of new software systems and the development of proprietary software code on a large scale. </field>
		<field name="user_id">2</field>
		<field name="date_1">1980-01-01 00:00:00</field>
		<field name="date_2">2001-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-17 14:45:16</field>
		<field name="modified">2012-08-17 14:45:26</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
		<field name="slug">lamb-company</field>
		<field name="homepage_url">www.lamb.com</field>
	</row>
	<row>
		<field name="id">148</field>
		<field name="name">LambSoft Inc.</field>
		<field name="category_id">3</field>
		<field name="description">In 1997, Lamb &amp; Company spun off LambSoft, a software technology development company whose goal is to productize motion editing and compositing software created as part of the company's long term efforts around blending motion capture with keyframe animation. </field>
		<field name="user_id">2</field>
		<field name="date_1">1997-01-01 00:00:00</field>
		<field name="date_2">2001-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-17 15:25:17</field>
		<field name="modified">2012-08-17 15:26:18</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">lambsoft-inc</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">149</field>
		<field name="name">Larry Lamb</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-17 15:26:58</field>
		<field name="modified">2012-08-17 15:26:58</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">larry-lamb</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">150</field>
		<field name="name">Toyo Links</field>
		<field name="category_id">3</field>
		<field name="description">Founded in 1982 as Toyo Links, and known since 1987 as simply Links, an Imagica Company. A short film called â€œBio-Sensorâ€ (created in 1984) was notable for itâ€™s use of innovative story telling. Art Durinski with his wife and Producing partner Mitchinko joined the company from Omnibus in 1986, staying for about a year and a half. Much of the work Links did was for Sony Corporation, including their international logo that served as inspiration for many later large companies. ( Art and Mitchinko would leave in 1988 to form their own consulting firm, the â€œDurinski Design Groupâ€ in LA )</field>
		<field name="user_id">2</field>
		<field name="date_1">1982-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-17 15:30:32</field>
		<field name="modified">2012-08-17 15:30:42</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">toyo-links</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">151</field>
		<field name="name">Art Durinski</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-17 15:31:51</field>
		<field name="modified">2012-08-17 15:31:51</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">art-durinski</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">152</field>
		<field name="name">Michiko Suzuki</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-17 15:36:57</field>
		<field name="modified">2012-08-17 15:36:57</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">michiko-suzuki</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">153</field>
		<field name="name">MAGI (Mathematics Application Group, Inc.) </field>
		<field name="category_id">3</field>
		<field name="description">Founded by three fellow scientists: Phil Mittelman (RPI), Leon Malin and ??? in 1966 as a spin off of United Nuclear Corporation. The original purpose of the companies was to carry out nuclear radiation penetration studies, in order to calculate shielding requirements and other such top secret government things. (The name MAGI was also a joking reference to the fact that it was founded by &quot;three wise men&quot;.)</field>
		<field name="user_id">2</field>
		<field name="date_1">1966-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-17 15:42:13</field>
		<field name="modified">2012-08-17 15:42:22</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">magi-mathematics-application-group-inc-</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">154</field>
		<field name="name">Philip Mittelman</field>
		<field name="category_id">1</field>
		<field name="description">Founder of Mathematics Application Group, Inc. (MAGI)</field>
		<field name="user_id">2</field>
		<field name="date_1">1925-01-01 00:00:00</field>
		<field name="date_2">1999-12-23 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-17 15:47:47</field>
		<field name="modified">2012-08-17 15:57:11</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">philip-mittelman</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">155</field>
		<field name="name">MAGI Synthavision</field>
		<field name="category_id">3</field>
		<field name="description">Begun in 1972 by Robert Goldstein and Bo Gehring, SynthaVision was the software division of MAGI that was marketed commercially for a short time under the company name of Computer Visuals Inc. The original software (Fortran2 and Fortran4 running on an IBM 360/65) used by the MAGI scientists for tracing particle radiation needed to be only slightly modified to trace light rays instead and make â€¦ ta da!: computer graphics. (Well maybe not quite that easily.)</field>
		<field name="user_id">2</field>
		<field name="date_1">1972-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-18 13:44:10</field>
		<field name="modified">2012-08-18 13:44:19</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
		<field name="slug">magi-synthavision</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">156</field>
		<field name="name">Robert Goldstein</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-18 13:44:59</field>
		<field name="modified">2012-08-18 13:44:59</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">robert-goldstein</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">157</field>
		<field name="name">Carl Machover</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-18 13:48:39</field>
		<field name="modified">2012-08-18 13:48:39</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">carl-machover</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">158</field>
		<field name="name">Alain Chesnais</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-19 15:30:13</field>
		<field name="modified">2012-08-19 15:30:13</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">alain-chesnais</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">159</field>
		<field name="name">Eugene Troubetzkoy</field>
		<field name="category_id">1</field>
		<field name="description">Dr. Troubetzkoy (A nuclear physicist) was the director of advanced projects at MAGI. He was previously a consulting physicist for the United Nuclear Corporation and a senior research associate in nuclear physics at Columbia University. </field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-20 17:00:51</field>
		<field name="modified">2012-08-20 17:05:28</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">eugene-troubetzkoy</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">160</field>
		<field name="name">Tron</field>
		<field name="category_id">2</field>
		<field name="description">Directed by Steven Lisberger
[ INSERT ENTRY FROM CG101 ]</field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-20 17:08:16</field>
		<field name="modified">2012-08-20 17:10:49</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">tron</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">161</field>
		<field name="name">John Lasseter</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-21 15:51:51</field>
		<field name="modified">2012-08-21 15:51:51</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">john-lasseter</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">162</field>
		<field name="name">Ken Perlin</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-21 15:56:22</field>
		<field name="modified">2012-08-21 15:56:22</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">ken-perlin</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">163</field>
		<field name="name">Phil Mittelman</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-21 16:05:29</field>
		<field name="modified">2012-08-21 16:05:29</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">phil-mittelman</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">164</field>
		<field name="name">DAvid Brown</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-21 16:05:54</field>
		<field name="modified">2012-08-21 16:05:54</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">david-brown</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">165</field>
		<field name="name">Josh Pines</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-21 16:06:38</field>
		<field name="modified">2012-08-21 16:06:38</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">josh-pines</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">166</field>
		<field name="name">Mental Images</field>
		<field name="category_id">3</field>
		<field name="description">Used Wavefront software as well as proprietary code that eventually became Mental Ray. Work for BMW and German television programming such as ARD and Bremen Television. Employees included John Berton (86-88) and Stefen Fangmeyer (88-90) both future Visual Effects Supervisors at ILM.
</field>
		<field name="user_id">2</field>
		<field name="date_1">1986-04-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:09:41</field>
		<field name="modified">2012-08-21 16:10:05</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
		<field name="slug">mental-images</field>
		<field name="homepage_url">http://www.mentalimages.com</field>
	</row>
	<row>
		<field name="id">167</field>
		<field name="name">Metrolight</field>
		<field name="category_id">3</field>
		<field name="description">Ron Saks (formerly of Abelâ€™s) was hired by Cranston Csuri (CCI) in anticipation of opening an LA office. Richard â€œDocâ€ Baily was hired in LA first, followed by Paul Sidlo and a few more people. All the new hires went out to Ohio in the summer of 1986 to learn the custom CCI code. A bunch of people soon went back to LA to an office in the back of Abelâ€™s old building. These included Tim McGovern (Abel), Jon Townley, Steve Martino, Mark Steeves, Doc Baily, Neil Eskuri(Disney) and Al Dinoble(Cinesite), Larry Elin (Magi/Abel) and Steve Klevatt.  When CCI folded, Ron Saks remained in Ohio and took up a teaching job there. Jim Kristoff, Dobbie Schiff (Jim and Dobbie are married), several of their family members, and Mits Kaneko all contributed the original funding to then start MetroLight.
Other key people who soon joined them included Con Pederson (Abel), Tom Hutchinson(ILM), Jim Hillen(Disney Feature Animation), John McLaughlin (SonyPictures ImageWorks), Gary Jackemuk, Jim Rygiel, Joe Letteri(ILM), Jeff Doud (Click 3X), Yung-Chen Sung, Rebecca Marie (Hammerhead), Scott Bendis (Interplay), Billy Kent, Patrice Dinhut, Kelley Ray (Sony), Mark Lasoff (Station X), Sean Schur (ILM).
</field>
		<field name="user_id">2</field>
		<field name="date_1">1987-01-01 00:00:00</field>
		<field name="date_2">2005-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:15:33</field>
		<field name="modified">2012-08-21 16:31:05</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
		<field name="slug">metrolight</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">168</field>
		<field name="name">The Moving Picture Company (MPC)</field>
		<field name="category_id">3</field>
		<field name="description">Then (and arguably still) the UK's leading video post house, MPC had a reputation as technology junkies. They had recently built a motion control rig under the direction Andrew Berend, a London Film School graduate. The computer that controlled the rig was built by Interactive Motion Control (IMC) (one of the partners at IMC was Bud Elam, who later won an Academy Award for Technical Achievement for motion control technology â€“ (his co-winner was Ray Feeney, who started RFX)</field>
		<field name="user_id">2</field>
		<field name="date_1">1980-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:32:38</field>
		<field name="modified">2012-08-21 16:32:40</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">the-moving-picture-company-mpc</field>
		<field name="homepage_url">http://www.moving-picture.com</field>
	</row>
	<row>
		<field name="id">169</field>
		<field name="name">National Center For Supercomputing Applications (NCSA) </field>
		<field name="category_id">3</field>
		<field name="description">Founded in 1985 by Nancy St,John &amp; Craig Upston (Co-Managers). Located at the University of Illinois at Urbana-Champaign. Pioneering Scientific Visualization software projects that created tools that scientists themselves could use. Stefen Fangmeier (ILM) was a TD</field>
		<field name="user_id">2</field>
		<field name="date_1">1985-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:35:25</field>
		<field name="modified">2012-08-21 16:35:45</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">national-center-for-supercomputing-applications-ncsa-</field>
		<field name="homepage_url">http://www.ncsa.illinois.edu</field>
	</row>
	<row>
		<field name="id">170</field>
		<field name="name"> Stefen Fangmeier</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-21 16:36:30</field>
		<field name="modified">2012-08-21 16:36:30</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">-stefen-fangmeier</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">171</field>
		<field name="name">New York Institute of Technology (NYIT)</field>
		<field name="category_id">3</field>
		<field name="description">In 1974 Dr. Alexander Schure, a wealthy entrepreneur, began to assemble the Computer Graphics Laboratory (CGL) at the New York Institute of Technology. His vision was to create a feature length animated film, with the aid of the days most sophisticated computer graphics techniques. NYIT itself was founded by Dr. Schure, had grounds encompassing numerous estates situated in the beautiful wooded hillsides of Old Westbury New York. Some of these estates were owned by members of the Rockafeller family, who also happened to have a seat on the board of Evans &amp; Sutherland. Because of the close association of E&amp;S with the University of Utah, Dave Evans recommended to Alex to seek out Edwin Catmull to head the new CGL.</field>
		<field name="user_id">2</field>
		<field name="date_1">1974-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:38:27</field>
		<field name="modified">2012-08-21 16:38:29</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">new-york-institute-of-technology-nyit</field>
		<field name="homepage_url">http://nyit.edu</field>
	</row>
	<row>
		<field name="id">172</field>
		<field name="name">Garland Stern</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-21 16:44:09</field>
		<field name="modified">2012-08-21 16:44:09</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">garland-stern</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">173</field>
		<field name="name">Alvy Ray Smith</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1">1943-09-08 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:44:38</field>
		<field name="modified">2012-10-28 12:27:11</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">alvy-ray-smith</field>
		<field name="homepage_url">http://alvyray.com/</field>
	</row>
	<row>
		<field name="id">174</field>
		<field name="name">David DiFrancesco</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-21 16:45:04</field>
		<field name="modified">2012-08-21 16:45:04</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">david-difrancesco</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">175</field>
		<field name="name">Steve &quot;Spaz&quot; Williams</field>
		<field name="category_id">1</field>
		<field name="description">Lives in a bright red house. Has a bright red tractor. Likes guns and his dog named Hoyt.</field>
		<field name="user_id">2</field>
		<field name="date_1">1900-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-29 09:24:49</field>
		<field name="modified">2012-08-29 09:27:36</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">steve-spaz-williams</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">176</field>
		<field name="name">Steve &quot;Spaz&quot; Williams</field>
		<field name="category_id">1</field>
		<field name="description">Lives in a bright red house. Has a bright red tractor. Likes guns.</field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-29 09:24:50</field>
		<field name="modified">2012-08-29 09:24:50</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">steve-spaz-williams</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">177</field>
		<field name="name">The Spirit of Spawn</field>
		<field name="category_id">2</field>
		<field name="description">Directed by Scott Leberecht. Behind the scenes at Industrial Light and Magic (ILM) with Steve 'Spaz' Williams supervising visual effects work on Spawn in 1997. Special guest George Lucas. </field>
		<field name="user_id">2</field>
		<field name="date_1">1997-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-29 11:52:22</field>
		<field name="modified">2012-08-29 11:55:26</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">the-spirit-of-spawn</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">178</field>
		<field name="name">Rolf Herken</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 09:59:57</field>
		<field name="modified">2012-10-24 09:59:57</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">rolf-herken</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">179</field>
		<field name="name">Gary Yost</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 10:18:19</field>
		<field name="modified">2012-10-24 10:18:19</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">gary-yost</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">180</field>
		<field name="name">Nancy St. John</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 10:25:47</field>
		<field name="modified">2012-10-24 10:25:47</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">nancy-st-john</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">181</field>
		<field name="name">Craig Upston</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 10:26:16</field>
		<field name="modified">2012-10-24 10:26:16</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">craig-upston</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">182</field>
		<field name="name">Ohio State University - Computer Graphics Research Group (CGRG)</field>
		<field name="category_id">3</field>
		<field name="description">Beginning with a National Science Foundation grant for $100,000 in 1969, The Computer Graphics Research Group (CGRG) began working with a PDP 11/45 minicomputer and Vector General Display. The CGRG was truly multi-disciplined and included faculty and graduate students in art, industrial design, photography and cinema, computer and information science, and mathematics. Additional grants from the Air Force Office For Scientific Research and the Navy continued at the center until 1990. The CGRG projects specialized in computer animation languages, geometric and terrain modeling, motion control, and real-time playback systems.</field>
		<field name="user_id">2</field>
		<field name="date_1">1969-01-01 00:00:00</field>
		<field name="date_2">1987-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 10:34:28</field>
		<field name="modified">2012-10-24 11:05:40</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">ohio-state-university-computer-graphics-research-group-cgrg</field>
		<field name="homepage_url">http://accad.osu.edu/</field>
	</row>
	<row>
		<field name="id">183</field>
		<field name="name">Tom DeFanti</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 10:53:10</field>
		<field name="modified">2012-10-24 10:53:10</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">tom-defanti</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">184</field>
		<field name="name">The Advanced Computing Center for the Arts and Design (ACCAD)</field>
		<field name="category_id">3</field>
		<field name="description">In 1987, Chuck Csuri and Tom Linehan (later President of the Ringling School of Design) converted the Computer Graphics Research Group into The Advanced Computing Center for the Arts and Design (ACCAD). With funding from a long-term Ohio Board of Regents grant, ACCAD was established to provide computer animation resources in teaching, research, and production for all departments in the College of the Arts at Ohio State</field>
		<field name="user_id">2</field>
		<field name="date_1">1987-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 11:07:23</field>
		<field name="modified">2012-10-24 11:07:49</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">the-advanced-computing-center-for-the-arts-and-design-accad</field>
		<field name="homepage_url">http://accad.osu.edu/</field>
	</row>
	<row>
		<field name="id">185</field>
		<field name="name">Omnibus</field>
		<field name="category_id">3</field>
		<field name="description">The Omnibus Group Inc. began as a group of Canadian companies in marketing and communication founded in London, Ontario, in 1972. It expanded with affiliated and shareholding offices in Toronto (Omnibus Video Inc.), Los Angeles (Image West Limited &amp; Downstream-Keyer Inc.), and Sydney, Australia (The Picture Company). John C. Pennie joined in 1974 as President.
Image West was developed by Omnibus beginning in 1975 and was located in Hollywood, California. (See the Image West company entry for more details.)
Omnibus Video Inc., started in 1981, was headed by President Jack Porter (who for 14 years was president of Sheridan College in Toronto) and was located in the Yonge-Eglinton area of Toronto, Canada. The NYIT TWEEN system was acquired and used by animator Robert Marinic (now a CG Supervisor at ILM), who was one of nine employees there at the time.
Omnibus Computer Graphics Inc. was started in early 1982 with W. Kelly Jarmain as Chairman and J.C. Pennie as President and CEO.</field>
		<field name="user_id">2</field>
		<field name="date_1">1982-01-01 00:00:00</field>
		<field name="date_2">1987-05-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 11:27:46</field>
		<field name="modified">2012-10-24 12:09:16</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">omnibus-computer-graphics-inc</field>
		<field name="homepage_url">http://www.omnibusjp.com/</field>
	</row>
	<row>
		<field name="id">186</field>
		<field name="name">Dan Philips</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 11:29:50</field>
		<field name="modified">2012-10-24 11:29:50</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">dan-philips</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">187</field>
		<field name="name">Kevin Tureski</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 11:31:29</field>
		<field name="modified">2012-10-24 11:31:29</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">kevin-tureski</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">188</field>
		<field name="name">Side Effects Software</field>
		<field name="category_id">3</field>
		<field name="description">Side Effects Software made the early procedurally based 3D system Prisms and now its modern version, Houdini. The company was founded by Kim Davidson and partner Greg Hermanovic after the demise of Omnibus Toronto. Greg was Director of Research at Omnibus, and Kim programmed and was the Director of Animation.
When Omnibus went under in 1987, Greg and Kim bought the rights to the Prisms software they had developed from the Royal Bank of Canada (the majority dept holder of Omnibus at the time of Omnibus' collapse). They started up a production house called Side Effects that later split into Side Effects Production and Side Effects Software. (The production side eventually was renamed Spin Productions to reduce confusion.)
</field>
		<field name="user_id">2</field>
		<field name="date_1">1987-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:00:33</field>
		<field name="modified">2012-10-25 10:02:49</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">side-effects</field>
		<field name="homepage_url">http://www.sidefx.com/</field>
	</row>
	<row>
		<field name="id">189</field>
		<field name="name">Thad Bier</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 12:18:22</field>
		<field name="modified">2012-10-24 12:18:22</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">thad-bier</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">190</field>
		<field name="name">Jamie Dixon</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 12:18:39</field>
		<field name="modified">2012-10-24 12:18:39</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">jamie-dixon</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">191</field>
		<field name="name">Hammerhead</field>
		<field name="category_id">3</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 12:19:11</field>
		<field name="modified">2012-10-24 12:19:11</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">hammerhead</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">192</field>
		<field name="name">Scott Anderson</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 12:25:18</field>
		<field name="modified">2012-10-24 12:25:18</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">scott-anderson</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">193</field>
		<field name="name">Glenn Entis</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 12:25:38</field>
		<field name="modified">2012-10-24 12:25:38</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">glenn-entis</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">194</field>
		<field name="name">Carl Rosendahl</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 12:26:49</field>
		<field name="modified">2012-10-24 12:26:49</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">carl-rosendahl</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">195</field>
		<field name="name">Richard Chuang</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 12:27:11</field>
		<field name="modified">2012-10-24 12:27:11</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">richard-chuang</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">196</field>
		<field name="name">Rob Cook</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 12:34:56</field>
		<field name="modified">2012-10-24 12:34:56</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">rob-cook</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">197</field>
		<field name="name">Loren Carpenter</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 12:35:45</field>
		<field name="modified">2012-10-24 12:35:45</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">loren-carpenter</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">198</field>
		<field name="name">Eben Ostby</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 12:36:08</field>
		<field name="modified">2012-10-24 12:36:08</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">eben-ostby</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">199</field>
		<field name="name">Ralph Guggenheim</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 12:36:31</field>
		<field name="modified">2012-10-24 12:36:31</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">ralph-guggenheim</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">200</field>
		<field name="name">Rodney Stock</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 12:38:59</field>
		<field name="modified">2012-10-24 12:38:59</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">rodney-stock</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">201</field>
		<field name="name">Protozoa</field>
		<field name="category_id">3</field>
		<field name="description">Located in San Francisco, CA Protozoa was a pioneering performance animation company of complete systems, production, and Web-based animation content. Founder Brad DeGraf spun this new company off from Colossal Picturesâ€™ Digital Media Division with $2 million from the Motorola New Ventures fund.</field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 14:12:57</field>
		<field name="modified">2012-10-24 14:13:00</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">protozoa</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">202</field>
		<field name="name">Bill Kovacs</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1">1949-10-25 00:00:00</field>
		<field name="date_2">2006-05-30 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 14:24:03</field>
		<field name="modified">2012-10-24 14:26:59</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">bill-kovacs</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">203</field>
		<field name="name">Wavefront</field>
		<field name="category_id">3</field>
		<field name="description">Larry Barels, Bill Kovacs, and Mark Sylvester founded Wavefront Technologies in 1984. The company created its first product, an animation software application called PreView, and shipped it to Universal Studios for use on the television series Knight Rider and to Lamb &amp; Company for use in previsualizing and controlling a motion control camera rig. During the next several years, the product line expanded to include modeling, rendering, compositing, and material-editing capabilities. The company enjoyed early relationships with key partners that shaped the direction of the products and the marketplace. Those early partners included Disney (The Great Mouse Detective), NASA (the Shuttle accident re-creation), NBC (the 1986 Olympics), and Failure Analysis (legal animations, including the World Airways crash at Logan Airport in Boston).</field>
		<field name="user_id">2</field>
		<field name="date_1">1984-01-01 00:00:00</field>
		<field name="date_2">1995-06-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 14:26:36</field>
		<field name="modified">2012-10-25 17:36:02</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">wavefront</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">204</field>
		<field name="name">Rhythm &amp; Hues</field>
		<field name="category_id">3</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 14:28:28</field>
		<field name="modified">2012-10-24 14:28:30</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">rhythm-hues</field>
		<field name="homepage_url">http://www.rhythm.com/</field>
	</row>
	<row>
		<field name="id">205</field>
		<field name="name">VIFX</field>
		<field name="category_id">3</field>
		<field name="description">VIFX was co-founded by partners Richard Hollander, Greg McMurry, Rhonda Gunner, and John Wash.</field>
		<field name="user_id">2</field>
		<field name="date_1">1985-01-01 00:00:00</field>
		<field name="date_2">2000-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 14:34:45</field>
		<field name="modified">2012-10-25 17:12:52</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">vifx</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">206</field>
		<field name="name">John Hughes</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 14:35:26</field>
		<field name="modified">2012-10-24 14:35:26</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">john-hughes</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">207</field>
		<field name="name">Robert Abel &amp; Associates</field>
		<field name="category_id">3</field>
		<field name="description">Icon of advertising, Harry Marks, provided Bob Abel and his old friend Con Pederson with the opportunity to create a new look for ABC television. From 1971 to 1973, in 6,000 square feet of vacant space behind an accountant's office, the fledgling Robert Abel &amp; Associates began to take shape. There was no phone, no sign on the building, no advertising, and no secretary; just Abel, Con, an optical guy named Dick Alexander, and a cameraman named Dave Stuart.</field>
		<field name="user_id">2</field>
		<field name="date_1">1971-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 16:48:47</field>
		<field name="modified">2012-10-24 16:50:45</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">robert-abel-associates</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">208</field>
		<field name="name">Robert Abel</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 16:49:29</field>
		<field name="modified">2012-10-24 16:49:29</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">robert-abel</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">209</field>
		<field name="name">Con Pederson</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 16:50:25</field>
		<field name="modified">2012-10-24 16:50:25</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">con-pederson</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">210</field>
		<field name="name">Richard Hollander</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 16:54:38</field>
		<field name="modified">2012-10-24 16:54:38</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">richard-hollander</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">211</field>
		<field name="name">Richard Taylor</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 16:54:58</field>
		<field name="modified">2012-10-24 16:54:58</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">richard-taylor</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">212</field>
		<field name="name">Abel Image Research</field>
		<field name="category_id">3</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-24 16:58:28</field>
		<field name="modified">2012-10-24 16:58:28</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">abel-image-research</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">213</field>
		<field name="name">Robert Greenberg &amp; Associates ( R/GA )</field>
		<field name="category_id">3</field>
		<field name="description">While R/GA itself was founded in 1977, Chris Woods set up the computer graphics department in 1981. Early on, some folks (including Jonathan Luskin) did some research, but not until 1985 did the CG department really get off the ground. The initial crew was all from MAGI/Synthavision: Josh Pines and Ken Perlin wrote the R/GA rendering code, Jan Carlee and Christine Chang were joined later by Tom Miller, Jim Goodman, Kevin Bjorke, and Job Francis.
Integral to RGA up to that point was a world-class optical and motion-control effects department headed by Joel Hynek and Stuart Robertson.
</field>
		<field name="user_id">2</field>
		<field name="date_1">1981-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 09:20:40</field>
		<field name="modified">2012-10-25 09:33:58</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">robert-greenberg-associates-r-ga-</field>
		<field name="homepage_url">http://www.rga.com/</field>
	</row>
	<row>
		<field name="id">214</field>
		<field name="name">Joel Hynek</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 09:21:33</field>
		<field name="modified">2012-10-25 09:21:33</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">joel-hynek</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">215</field>
		<field name="name">Jan Carlee</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 09:29:00</field>
		<field name="modified">2012-10-25 09:29:00</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">jan-carlee</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">216</field>
		<field name="name">Christine Chang</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 09:29:25</field>
		<field name="modified">2012-10-25 09:29:25</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">christine-chang</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">217</field>
		<field name="name">Kevin Bjorke</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 09:29:59</field>
		<field name="modified">2012-10-25 09:29:59</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">kevin-bjorke</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">218</field>
		<field name="name">George Joblove</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 09:32:34</field>
		<field name="modified">2012-10-25 09:32:34</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">george-joblove</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">219</field>
		<field name="name">Ellen Somers</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 09:33:48</field>
		<field name="modified">2012-10-25 09:33:48</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">ellen-somers</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">220</field>
		<field name="name">Santa Barbara Studios</field>
		<field name="category_id">3</field>
		<field name="description">Santa Barbara Studios was founded in 1990 by John Grower and began specializing in procedural natural phenomenon effects using Wavefront Technologies' Dynamation software. Employees included Bill Kovacs, Will Rivera, Eric Guagliani, Bruce Jones, Phil Brock, Eric DeJong, Mark, Wendell, Diane Holland, and Matt Rhodes.</field>
		<field name="user_id">2</field>
		<field name="date_1">1990-01-01 00:00:00</field>
		<field name="date_2">2002-09-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 09:36:21</field>
		<field name="modified">2012-10-25 09:59:33</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">santa-barbara-studios</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">221</field>
		<field name="name">John Grower</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 09:46:18</field>
		<field name="modified">2012-10-25 09:46:18</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">john-grower</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">222</field>
		<field name="name">Kim Davidson</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 10:03:21</field>
		<field name="modified">2012-10-25 10:03:21</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">kim-davidson</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">223</field>
		<field name="name">Greg Hermanovic</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 10:04:29</field>
		<field name="modified">2012-10-25 10:04:29</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">greg-hermanovic</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">224</field>
		<field name="name">Silicon Graphics Inc. ( SGI )</field>
		<field name="category_id">3</field>
		<field name="description">Founded in 1982 by Dr. Jim Clark (Ph.D., University of Utah, 1974), Silicon Graphics Inc. was the manufacturer of RISC processor-based IRIS graphics workstations, which are popular in visualization and high-end CG animation/visual-effects companies. Jim Clark, while at Stanford University, invented the Graphics Engine, the first Very Large Scale Integrated (VLSI) graphics chip. 
The company has gone through many significant changes until being branded simply as SGI in May of 2009.</field>
		<field name="user_id">2</field>
		<field name="date_1">1982-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 10:17:24</field>
		<field name="modified">2012-10-25 10:17:26</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">silicon-graphics-inc-sgi-</field>
		<field name="homepage_url">http://www.sgi.com/</field>
	</row>
	<row>
		<field name="id">225</field>
		<field name="name">Softimage</field>
		<field name="category_id">3</field>
		<field name="description">Formed by Daniel Langlois (one of the three animators on the short film Tony de Peltri) in 1986, Softimage was based in Montreal. Its first interactive 3D software product, Creative Environment 1.0, debuted at the 1988 Siggraph in Atlanta. Softimage led the way in advanced IK character animation tools for high-end 3D users with the Actor module. The work on Actor started in late 1990, and it was first shown in public at Siggraph 1991 in Las Vegas. It was first released in version 2.51 of the Softimage Creative Environment in early 1992.</field>
		<field name="user_id">2</field>
		<field name="date_1">1986-01-01 00:00:00</field>
		<field name="date_2">1998-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 11:36:52</field>
		<field name="modified">2012-10-25 11:36:54</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">softimage</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">226</field>
		<field name="name">Daniel Langlois</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 11:37:55</field>
		<field name="modified">2012-10-25 11:37:55</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">daniel-langlois</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">227</field>
		<field name="name">Sogitec</field>
		<field name="category_id">3</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 11:45:31</field>
		<field name="modified">2012-10-25 11:45:31</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">sogitec</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">228</field>
		<field name="name">Xavier Nicolas</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 11:50:35</field>
		<field name="modified">2012-10-25 11:50:35</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">xavier-nicolas</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">229</field>
		<field name="name">Symbolics Graphics Division</field>
		<field name="category_id">3</field>
		<field name="description">Symbolics, Inc. was formed in 1980, headed by Russell Noftsker and his right-hand man and CTO Jack Holloway (both from Triple-I). Hardware architecture was based on work by researchers at the M.I.T. Artificial Intelligence Laboratory and the Lisp Machine project in 1974 (thanks to the close proximity of the Symbolics Cambridge Research Center).

The Symbolics LM-2 was introduced in 1981, the 3600 in 1982, the 3640 and 3670 in 1984, and the 3675 and 3645 in 1985. At its peak in 1985, Symbolics had more than 650 employees and 35 sales offices in North America, Europe, Japan, and the Middle East. Symbolics had more than 1,500 systems installed around the world. Color graphics system hardware included 8-bit or 24-bit high-resolution framebuffers, 32-bit broadcast resolution framebuffers, CAD buffers, digitizing frame grabbers, genlock options (for synchronization to video), color monitors (standard, premium, NTSC-resolution, and CAD buffer monitors), graphics tablets, and NTSC encoders and decoders.</field>
		<field name="user_id">2</field>
		<field name="date_1">1981-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 12:20:37</field>
		<field name="modified">2012-10-25 12:20:40</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">symbolics-graphics-division</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">230</field>
		<field name="name">Joseph Goldstone</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 12:23:57</field>
		<field name="modified">2012-10-25 12:23:57</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">joseph-goldstone</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">231</field>
		<field name="name">Richard ( Doc ) Baily</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 12:25:15</field>
		<field name="modified">2012-10-25 12:25:15</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">richard-doc-baily</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">232</field>
		<field name="name">Philippe Bergeron</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 12:26:39</field>
		<field name="modified">2012-10-25 12:26:39</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">philippe-bergeron</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">233</field>
		<field name="name">Tom McMahon</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 13:31:23</field>
		<field name="modified">2012-10-25 13:31:23</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">tom-mcmahon</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">234</field>
		<field name="name">John Lansdown</field>
		<field name="category_id">1</field>
		<field name="description">John Lansdown was Emeritus Professor of Computer Aided Art and Design and formerly Head of the Centre for Electronic Arts (formerly called the Centre for Advanced Studies in Computer Aided Art and Design) from September 1988 until July 1995 when he retired from full-time employment.
In 1968, he was one of the founders of the Computer Arts Society and was its honorary secretary for more than 25 years. He was engaged in using computers for creative activities (such as architecture, art, and choreography) since 1960 and wrote over 300 publications on computer uses in art and design.&quot; â€”excerpt by permission of Huw Jones
A true pioneer of computer graphics in the UK, John Lansdown died of leukemia on February 17, 1999.
</field>
		<field name="user_id">2</field>
		<field name="date_1">1929-01-22 00:00:00</field>
		<field name="date_2">1999-02-17 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 13:33:42</field>
		<field name="modified">2012-10-25 13:46:38</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">john-lansdown</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">235</field>
		<field name="name">John Lansdown</field>
		<field name="category_id">1</field>
		<field name="description">John Lansdown was Emeritus Professor of Computer Aided Art and Design and formerly Head of the Centre for Electronic Arts (formerly called the Centre for Advanced Studies in Computer Aided Art and Design) from September 1988 until July 1995 when he retired from full-time employment.
In 1968, he was one of the founders of the Computer Arts Society and was its honorary secretary for more than 25 years. He was engaged in using computers for creative activities (such as architecture, art, and choreography) since 1960 and wrote over 300 publications on computer uses in art and design.&quot; â€”excerpt by permission of Huw Jones
A true pioneer of computer graphics in the UK, John Lansdown died of leukemia on February 17, 1999.
</field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2">1999-02-17 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 13:34:08</field>
		<field name="modified">2012-10-25 13:34:08</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">john-lansdown</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">236</field>
		<field name="name">System Simulation</field>
		<field name="category_id">3</field>
		<field name="description">John Lansdown founded System Simulation in London with his colleague George Mallen and others from the Computer Arts Society. Through it, he developed major innovations in computer animation such as special effects for advertisements and television titles; effects for the feature films Alien (1979), Saturn III, and Heavy Metal; and the realization of the original animated Channel 4 logo. John created what was then the world's largest computer-generated mural (reviewed in Building Design as a &quot;waste of electricity,&quot; although few today would question the bright power of his creative output).
John Lansdown chaired the company until 1988.</field>
		<field name="user_id">2</field>
		<field name="date_1">1970-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 13:45:00</field>
		<field name="modified">2012-10-25 13:48:32</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">system-simulation</field>
		<field name="homepage_url">http://www.ssl.co.uk/</field>
	</row>
	<row>
		<field name="id">237</field>
		<field name="name">Computer Arts Society</field>
		<field name="category_id">3</field>
		<field name="description">Formed in 1968 by Alan Sutcliffe, George Mallen, and John Lansdown</field>
		<field name="user_id">2</field>
		<field name="date_1">1968-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 13:45:29</field>
		<field name="modified">2012-10-26 09:43:05</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">computer-arts-society</field>
		<field name="homepage_url">http://computer-arts-society.com/</field>
	</row>
	<row>
		<field name="id">238</field>
		<field name="name">University of Bath ( UK )</field>
		<field name="category_id">3</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1">1975-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 13:57:44</field>
		<field name="modified">2012-10-25 14:02:48</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">university-of-bath-uk-</field>
		<field name="homepage_url">http://www.bath.ac.uk/media/</field>
	</row>
	<row>
		<field name="id">239</field>
		<field name="name">Electronic Visualization Laboratory (EVL) </field>
		<field name="category_id">3</field>
		<field name="description">The Electronic Visualization Laboratory (EVL) is a graduate research laboratory specializing in virtual reality and real-time interactive computer graphics. It is a joint effort of University of Illinois - Chicago's College of Engineering and School of Art and Design, and it represents the oldest formal collaboration between engineering and art in the country, offering graduate degrees to those specializing in visualization.</field>
		<field name="user_id">2</field>
		<field name="date_1">1973-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 14:05:21</field>
		<field name="modified">2012-10-25 15:28:15</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">electronic-visualization-laboratory-evl-</field>
		<field name="homepage_url">http://www.evl.uic.edu/</field>
	</row>
	<row>
		<field name="id">240</field>
		<field name="name">Larry Cuba</field>
		<field name="category_id">1</field>
		<field name="description">Larry Cuba is widely recognized as a pioneer in the use of computers in animation art. Producing his first computer animation in 1974, Cuba was at the forefront of the computer-animation artists considered the &quot;second generation&quot; --- those who directly followed the visionaries of the sixties: John Whitney, Sr., Stan Vanderbeek and Lillian Schwartz.</field>
		<field name="user_id">2</field>
		<field name="date_1">1950-09-17 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 14:11:49</field>
		<field name="modified">2012-10-25 15:34:49</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">larry-cuba</field>
		<field name="homepage_url">http://www.well.com/~cuba/</field>
	</row>
	<row>
		<field name="id">241</field>
		<field name="name">Star Wars</field>
		<field name="category_id">2</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 15:35:38</field>
		<field name="modified">2012-10-25 15:35:38</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">star-wars</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">242</field>
		<field name="name">University of Utah</field>
		<field name="category_id">3</field>
		<field name="description">Dr. David Evans founded the Computer Science Department at the University of Utah in 1968. It was started in part by Bob Taylor's ARPA funding a $5 million grant.</field>
		<field name="user_id">2</field>
		<field name="date_1">1968-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 15:47:41</field>
		<field name="modified">2012-10-25 15:52:03</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">university-of-utah</field>
		<field name="homepage_url">http://www.cs.utah.edu/research/areas/graphics/</field>
	</row>
	<row>
		<field name="id">243</field>
		<field name="name">Henri Gouraud</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 15:50:08</field>
		<field name="modified">2012-10-25 15:50:08</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">henri-gouraud</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">244</field>
		<field name="name">Jim Kajiya</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 15:51:28</field>
		<field name="modified">2012-10-25 15:51:28</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">jim-kajiya</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">245</field>
		<field name="name">James ( Jim ) Blinn</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1">1949-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 15:51:57</field>
		<field name="modified">2012-10-27 16:47:14</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">james-jim-blinn</field>
		<field name="homepage_url">http://www.jimblinn.com/</field>
	</row>
	<row>
		<field name="id">246</field>
		<field name="name">Vertigo</field>
		<field name="category_id">3</field>
		<field name="description">The history of Vertigo, a 3D animation company based in Vancouver, Canada, is marked by a sequence of four distinct eras:
Vertigo Production Company, 1979â€“83
Vertigo Systems International, 1983â€“87
Vertigo/Cubicomp, 1987â€“90
Vertigo Again, 1990â€“present
</field>
		<field name="user_id">2</field>
		<field name="date_1">1979-01-01 00:00:00</field>
		<field name="date_2">2005-07-15 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:00:15</field>
		<field name="modified">2012-10-25 16:17:05</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">vertigo</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">247</field>
		<field name="name">Rick Stringfellow</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 16:15:02</field>
		<field name="modified">2012-10-25 16:15:02</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">rick-stringfellow</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">248</field>
		<field name="name">Cubicomp</field>
		<field name="category_id">3</field>
		<field name="description">Cubicomp was founded in the early 1980s in a garage in Berkeley, California, by Edwin P. Berlin, Jr. to provide a turnkey computer animation system on an IBM personal computer. The Cubicomp product, called PictureMaker, featured polygonal modeling, scene choreography, and rendering at a much lower price point than on comparable workstation-based software systems. At the time of the aquisition, the combined installed based totalled some 750 units worldwide.</field>
		<field name="user_id">2</field>
		<field name="date_1">1982-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:17:36</field>
		<field name="modified">2012-10-25 16:27:33</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">cubicomp</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">249</field>
		<field name="name">Michael Zyda</field>
		<field name="category_id">1</field>
		<field name="description">Professor Zyda began his career in Computer Graphics in 1973 as part of an undergraduate research group, the Senses Bureau, at the University of California, San Diego. Professor Zyda received a BA in Bioengineering from the University of California, San Diego in La Jolla in 1976, an MS in Computer Science from the University of Massachusetts, Amherst in 1978 and a DSc in Computer Science from Washington University, St. Louis, Missouri in 1984.</field>
		<field name="user_id">2</field>
		<field name="date_1">1954-09-11 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:52:07</field>
		<field name="modified">2012-10-25 16:52:50</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">michael-zyda</field>
		<field name="homepage_url">http://gamepipe.usc.edu/~zyda/</field>
	</row>
	<row>
		<field name="id">250</field>
		<field name="name">John Wash</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 17:02:16</field>
		<field name="modified">2012-10-25 17:02:16</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">john-wash</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">251</field>
		<field name="name">Mark Sylvester</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 17:22:58</field>
		<field name="modified">2012-10-25 17:22:58</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">mark-sylvester</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">252</field>
		<field name="name">Whitney Demos Productions</field>
		<field name="category_id">3</field>
		<field name="description">Whitney/Demos was founded by John Whitney Jr. and Gary Demos after their company, Digital Productions, was taken over by Omnibus. Funding assistance included Tom McMahon from the Symbolics Graphics Division and other private investors.
Initial production was based on Thinking Machines' Connection Machine II fronted by a Symbolics workstation along with other computer systems.</field>
		<field name="user_id">2</field>
		<field name="date_1">1986-01-01 00:00:00</field>
		<field name="date_2">1988-06-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 17:38:59</field>
		<field name="modified">2012-10-25 17:39:22</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">whitney-demos-productions</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">253</field>
		<field name="name">Stanley and Stella in Breaking the Ice</field>
		<field name="category_id">2</field>
		<field name="description">A brilliant early CG animation short film produced by the Symbolics Graphics Division in association with Whitney / Demos Productions. Premiered at SIGGRAPH 1987.</field>
		<field name="user_id">2</field>
		<field name="date_1">1987-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 17:43:25</field>
		<field name="modified">2012-10-25 17:47:10</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">stanley-and-stella-in-breaking-the-ice</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">254</field>
		<field name="name">John Turner Whitted</field>
		<field name="category_id">1</field>
		<field name="description">Best known for his breakthrough 1979 paper &quot;An  Improved  Illumination Model  for  Shaded  Display&quot; which introduced the concept of ray tracing; Turner is currently a senior researcher at Microsoft.</field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 16:34:03</field>
		<field name="modified">2012-10-27 16:41:50</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">turner-whitted</field>
		<field name="homepage_url">http://research.microsoft.com/en-us/people/jtw/</field>
	</row>
	<row>
		<field name="id">255</field>
		<field name="name">ray tracing</field>
		<field name="category_id">2</field>
		<field name="description">Ray tracing was first developed in the mid 1960s by Bob Goldstein. (The key paper was published in &quot;Simulation&quot; in 1968.) Other developers at this stage included Arthur Appel, Herb Steinberg, Roger Nage, Marty Cohen, and Eugene Troubetskoy (Magi/Synthavision).
Papers presented at SIGGRAPH by Alan Kay and Turner Whitted in 1979 and 1980 expanded its utilization with specular reflection and refraction.
</field>
		<field name="user_id">2</field>
		<field name="date_1">1963-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 16:39:32</field>
		<field name="modified">2012-10-29 12:13:27</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">ray-tracing</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">256</field>
		<field name="name">Jet Propulsion Laboratory ( JPL )</field>
		<field name="category_id">3</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-27 16:46:23</field>
		<field name="modified">2012-10-27 16:46:23</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">jet-propulsion-laboratory-jpl-</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">257</field>
		<field name="name">Project Mathematics!</field>
		<field name="category_id">2</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1">1988-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 16:47:04</field>
		<field name="modified">2012-10-27 16:49:59</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">project-mathematics</field>
		<field name="homepage_url">http://www.projectmathematics.com/</field>
	</row>
	<row>
		<field name="id">258</field>
		<field name="name">SIGGRAPH</field>
		<field name="category_id">3</field>
		<field name="description">The Special Interest Group on GRAPHics and Interactive Techniques was founded in 1969 by Andy Van Dam and best known for its annual conference, celebrating it's 40th anniversary in 2013.</field>
		<field name="user_id">2</field>
		<field name="date_1">1969-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 16:55:44</field>
		<field name="modified">2012-10-27 16:55:47</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">siggraph</field>
		<field name="homepage_url">http://www.siggraph.org/</field>
	</row>
	<row>
		<field name="id">259</field>
		<field name="name">Xaos</field>
		<field name="category_id">3</field>
		<field name="description">Xaos originally was called Eidolon by Arthur Shwartzberg and Michael Tolson when they both left a studio in San Fransisco called Synthetic Video, where Arthur was Director of Marketing and Michael was a co-founder.
Renamed and incorporated in early 1989, Tolson held the office of President, Schwartzberg was VP/General Manager, and a new third partner, Mark Malmberg, was named Secretary, Creative Director, and Head of Production.
While Arthur's strength was in marketing, Tolson was largely self-taught and was a visionary both creatively and technically. He wrote the bulk of Xaos' early software from scratch with contributions to software development at the time from programmers Michael Beese and Eric Texier. Malmberg received an M.F.A. from UC-Berkeley in 1981 and had been working for General Graphics Services in San Francisco.
</field>
		<field name="user_id">2</field>
		<field name="date_1">1989-01-01 00:00:00</field>
		<field name="date_2">2000-01-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 17:54:12</field>
		<field name="modified">2012-10-27 18:08:53</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">xaos</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">260</field>
		<field name="name">Helene Plotkin</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-27 18:05:51</field>
		<field name="modified">2012-10-27 18:05:51</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">helene-plotkin</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">261</field>
		<field name="name">Arthur Shwartzberg</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-27 18:06:29</field>
		<field name="modified">2012-10-27 18:06:29</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">arthur-shwartzberg</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">262</field>
		<field name="name">Michael Tolson</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-27 18:06:59</field>
		<field name="modified">2012-10-27 18:06:59</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">michael-tolson</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">263</field>
		<field name="name">Mark Malmberg</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-27 18:07:23</field>
		<field name="modified">2012-10-27 18:07:23</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">mark-malmberg</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">264</field>
		<field name="name">Daniel Wexler</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-27 18:10:08</field>
		<field name="modified">2012-10-27 18:10:08</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">daniel-wexler</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">265</field>
		<field name="name">Richard Shoup</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 18:22:50</field>
		<field name="modified">2012-10-27 18:24:47</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">richard-shoup</field>
		<field name="homepage_url">http://www.rgshoup.com/</field>
	</row>
	<row>
		<field name="id">266</field>
		<field name="name">Aurora Systems</field>
		<field name="category_id">3</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-27 18:24:38</field>
		<field name="modified">2012-10-27 18:24:38</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">aurora-systems</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">267</field>
		<field name="name">Maurice Benayoun</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1">1957-03-29 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 18:30:05</field>
		<field name="modified">2012-10-27 18:30:35</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">maurice-benayoun</field>
		<field name="homepage_url">http://www.benayoun.com/</field>
	</row>
	<row>
		<field name="id">268</field>
		<field name="name">Z-A</field>
		<field name="category_id">3</field>
		<field name="description">Z-A was founded in 1987 in Paris by three people: StÃ©phane Singier (Chief Manager), Thierry Prieur (Technical Manager), and Maurice Benayoun (Art Director).

In addition to animated projects for television, Z-A worked on special effects, television openings, receiving numerous awards. For example, 1st and 2nd prize at Imagina; scientific and architectural simulations, etc. Most recently Z-A had been working on several Japanese CG ventures (television, theme parks, and so on) and French and European productions. </field>
		<field name="user_id">2</field>
		<field name="date_1">1987-01-01 00:00:00</field>
		<field name="date_2">2003-03-01 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 18:32:29</field>
		<field name="modified">2012-10-27 18:39:41</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">z-a</field>
		<field name="homepage_url">http://www.z-a.net/indexza.fr.html</field>
	</row>
	<row>
		<field name="id">269</field>
		<field name="name">scanimate</field>
		<field name="category_id">2</field>
		<field name="description">Patented in 1972, Scanimate was a wall-sized behemoth of knobs, switches, thumbwheel counters, and patch panels. At its heart was a 950 scan-line resolution cathode ray tube (CRT) with special phosphors for a brighter, longer-lasting image. A camera was trained on a light box with flat artwork of the client's logo. The monochromatic video image of the logo from this camera was fed into Scanimate's special CRT. The Scanimate artist could then plug hundreds of little yellow wires into the patch panels, connecting such electronic components as ramp voltages, summing amplifiers, multipliers, rectifiers, diodes, and oscillators in much the same way as with a &quot;50-in-1&quot; electronics kit. These circuits could animate the client's logo on the screen in an infinite number of ways[md]stretching, warping, undulating, wiggling, sparkling, glowing, flying over slit-scan grids or star fields[md]all based on the creativity and electronic virtuosity of the Scanimate artist. If a sine wave oscillator was patched into Scanimate's HORIZONTAL parameter, for example, the logo would move back and forth from left to right. If the oscillator was switched to a square wave, the logo would pop from left to right. If a sine wave was patched into HORIZONTAL and</field>
		<field name="user_id">2</field>
		<field name="date_1">1972-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 21:51:39</field>
		<field name="modified">2012-10-28 12:10:19</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">scanimate</field>
		<field name="homepage_url">http://scanimate.zfx.com/</field>
	</row>
	<row>
		<field name="id">270</field>
		<field name="name">alpha channel</field>
		<field name="category_id">2</field>
		<field name="description">The fourth RGBA information channel that contains 8-bit grayscale values used in compositing. It was co-developed by Ed Catmull and Alvy Ray Smith at the New York Institute of Technology in 1977. Why &quot;alpha?&quot; According to Smith, image composition uses simple linear interpretation in which the Greek letter &quot;A&quot; (alpha) controls the amount of interpolation between two images.</field>
		<field name="user_id">2</field>
		<field name="date_1">1977-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 12:22:11</field>
		<field name="modified">2012-10-28 12:25:42</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">alpha-channel</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">271</field>
		<field name="name">Tom Porter</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-28 12:24:16</field>
		<field name="modified">2012-10-28 12:24:16</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">tom-porter</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">272</field>
		<field name="name">Tom Duff</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-28 12:24:46</field>
		<field name="modified">2012-10-28 12:24:46</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">tom-duff</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">273</field>
		<field name="name">Altamira Composer</field>
		<field name="category_id">2</field>
		<field name="description">This is sprite-based image-compositing software for Windows, marketed for Web-based image creation. Originally from Altamira Software Corporation. It was acquired by Microsoft's Advanced Technology Division in 1994</field>
		<field name="user_id">2</field>
		<field name="date_1">1991-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 12:28:01</field>
		<field name="modified">2012-10-28 12:38:40</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">altamira</field>
		<field name="homepage_url">http://alvyray.com/Altamira/AltamiraProduct.htm</field>
	</row>
	<row>
		<field name="id">274</field>
		<field name="name">Chalice</field>
		<field name="category_id">2</field>
		<field name="description">This 2D compositing software used an &quot;interactive data-flow diagram paradigm&quot; (a fancy way of saying an intuitive interface with dependency structure). Written in conjunction with Side Effects Software and RFX, Chalice was available for UNIX and NT from Silicon Grail in 1995. Film resolution tracking color correction and extractions can be controlled through mathematical expressions. It was optimized for the DEC Alpha and cost about $3,000 in 1998. Chalice (and its sister program RAYZ) was purchased by Apple in June 2002 and later discontinued. </field>
		<field name="user_id">2</field>
		<field name="date_1">2000-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 12:33:37</field>
		<field name="modified">2012-10-28 12:33:37</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">chalice</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">275</field>
		<field name="name">RFX</field>
		<field name="category_id">3</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-28 12:34:03</field>
		<field name="modified">2012-10-28 12:34:03</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">rfx</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">276</field>
		<field name="name">Cineon</field>
		<field name="category_id">2</field>
		<field name="description">SGI-based compositing software from Kodak. Typhoon is the O2-based entry-level system, Storm is a dual-processor version for high resolution and remote rendering, and Tornado runs on multi-proc Onyx2 supercomputers. This product hasn't been available since 1998 when Kodak pulled support for it. Its very powerful dual-monitor setup and flow chart GUI approach to interface design are made for productive work sessions.
Cineon also refers to the image file format used by the system, which has the capability to store data in 16-bit log format. This provides a very deep response curve that preserves the subtle color details and gradients found in film. A users site can be found at www.cineon.com  
</field>
		<field name="user_id">2</field>
		<field name="date_1">1995-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 12:35:01</field>
		<field name="modified">2012-10-28 12:36:14</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">cineon</field>
		<field name="homepage_url">http://www.cineon.com/</field>
	</row>
	<row>
		<field name="id">277</field>
		<field name="name">Wavefront Composer</field>
		<field name="category_id">2</field>
		<field name="description">This full-featured film-resolution compositing software launched originally from Wavefront was first made available for the SGI in 1991. Features include lens warping, motion blur, multiprocessor rendering, time distortion, and &quot;True Track&quot; motion tracking. This product is based on scanline compositing algorithms and a data-flow diagram interface, the GUI being similar to modern After Effects. Composer was discontinued in late 2001 in favor of Fusion.</field>
		<field name="user_id">2</field>
		<field name="date_1">1991-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 12:37:34</field>
		<field name="modified">2012-10-28 12:37:36</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">wavefront-composer</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">278</field>
		<field name="name">Concerto</field>
		<field name="category_id">2</field>
		<field name="description">Such a deal! This resolution-independent compositing software for Windows 95/NT was originally from Axis Software and later  from Chyron Corporation. Plug-ins werr available such as Final Effects from MetaCreations, BorisFX from Artel Software, Hollywood FX from Synergy International, and Power Pack from WAVES. Concerto gave you a multiprocessor plug-in environment for the only affordable price. Chyron disposed of Concerto in late 1998.</field>
		<field name="user_id">2</field>
		<field name="date_1">1995-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 12:41:03</field>
		<field name="modified">2012-10-28 12:41:03</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">concerto</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">279</field>
		<field name="name">Chyron</field>
		<field name="category_id">3</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-28 12:41:28</field>
		<field name="modified">2012-10-28 12:41:28</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">chyron</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">280</field>
		<field name="name">Discreet Logic</field>
		<field name="category_id">3</field>
		<field name="description">Formed in 1991 to provide several high-end painting, video editing, and compositing software products based on the SGI hardware platform. Products have included inferno and flame; effect, paint, and light for multimedia content creation; and frost, a real-time 3D broadcast graphics system with vapour virtual studio module, Paint vector-based painting, and an animation system for NT.</field>
		<field name="user_id">2</field>
		<field name="date_1">1991-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 12:42:26</field>
		<field name="modified">2012-10-28 12:42:44</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">discreet-logic</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">281</field>
		<field name="name">Quantel</field>
		<field name="category_id">2</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-28 14:11:47</field>
		<field name="modified">2012-10-28 14:11:47</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">quantel</field>
		<field name="homepage_url">http://www.quantel.com/</field>
	</row>
	<row>
		<field name="id">282</field>
		<field name="name">Domino</field>
		<field name="category_id">2</field>
		<field name="description">This real-time, 12-bit, film-resolution compositing and effects product was first introduced from Quantel in 1993. The core Double4 workstation can be purchased separately, or (at almost $1 million) the complete proprietary hardware/software film effects system can handle everything from scanning to film out. Domino contained a full suite of advanced tools including tracking/stabilization, color correction, keying, grain tools, restoration, and wire removal. </field>
		<field name="user_id">2</field>
		<field name="date_1">1993-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 14:12:48</field>
		<field name="modified">2012-10-28 14:13:01</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">domino</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">283</field>
		<field name="name">Effetto Pronto</field>
		<field name="category_id">2</field>
		<field name="description">Effetto Pronto was a Quicktime based compositing tool introduced for the Mac by Videonics in 1999, and later acquired from KUB Systems in 1998. (Effetto Pronto is Italian for &quot;fast effects.&quot;) It can be used in connection with the Pronto and Rapido PCI interface cards for hardware accelerated real-time, resolution-independent character generation, compositing, effects, keying, 3D DVE, and texture mapping. It has full third-party filter support for Photoshop, After Effects, and Commotion. At the time it was similar to After Effects but with true 3D space control. Discontinued in early 2000. </field>
		<field name="user_id">2</field>
		<field name="date_1">1999-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 14:15:28</field>
		<field name="modified">2012-10-28 14:15:48</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">effetto-pronto</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">284</field>
		<field name="name">After Effects</field>
		<field name="category_id">2</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-28 14:16:42</field>
		<field name="modified">2012-10-28 14:16:42</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">after-effects</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">285</field>
		<field name="name">Elastic Reality</field>
		<field name="category_id">2</field>
		<field name="description">The early de facto industry standard for warping and morphing effects, it also contains many other standard compositing, color correction, matting, and 2D animation tools. First developed by ASDG, which in 1994 changed its corporate name to that of its most popular product. ER was acquired in March of 1995 by Avid and was honored with a Technical Achievement Award from the Academy of Motion Picture Arts and Sciences in 1996. It was discontinued in about 2001.</field>
		<field name="user_id">2</field>
		<field name="date_1">1994-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 14:17:43</field>
		<field name="modified">2012-10-28 14:17:57</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">elastic-reality</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">286</field>
		<field name="name">Avid</field>
		<field name="category_id">3</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-28 14:18:24</field>
		<field name="modified">2012-10-28 14:18:24</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">avid</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">287</field>
		<field name="name">Flame</field>
		<field name="category_id">2</field>
		<field name="description">First introduced in 1992, flame is Discreet Logic's (now Autodeskâ€™s) high-end effects and compositing package. Originally optimized for the SGI Octane platform, the cost was over $250,000. New features include a full 12-bit image format, 3D distortion tools, and a new extremely accurate tracking feature.
Capabilities include real-time high-resolution playback, up to 2K resolution at 8-bit per channel color depth, true 3D object manipulating, warping and time-stretch tools, precise keying, painting, automated rotoscoping and matte generation, image processing, film grain tools, and much more. Hundreds of SPARKS third-party plug-ins are available for a wide range of additional capabilities.
</field>
		<field name="user_id">2</field>
		<field name="date_1">1992-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 14:19:16</field>
		<field name="modified">2012-10-28 14:22:35</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">flame</field>
		<field name="homepage_url">http://usa.autodesk.com/flame/</field>
	</row>
	<row>
		<field name="id">288</field>
		<field name="name">Autodesk</field>
		<field name="category_id">3</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-28 14:23:03</field>
		<field name="modified">2012-10-28 14:23:03</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">autodesk</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">289</field>
		<field name="name">Flint</field>
		<field name="category_id">2</field>
		<field name="description">This was the native name for Discreet Logics's SGI O2-based effect compositing software. If offers real-time and resolution-independent compositing, editing, graphics, and painting.
Originally the product name for entry-level SGI workstation-based compositing software, it was marketed as effect (option 3) before being reintroduced as a new product in February 1999.
</field>
		<field name="user_id">2</field>
		<field name="date_1">1999-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 14:24:31</field>
		<field name="modified">2012-10-28 14:25:45</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">flint</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">290</field>
		<field name="name">Fusion</field>
		<field name="category_id">2</field>
		<field name="description">Professional compositing software available from eyeon Software Inc. (Toronto). First designed in 1999 in partnership with then Alias|Wavefront (when A|W was still part of SGI). </field>
		<field name="user_id">2</field>
		<field name="date_1">1999-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 14:27:35</field>
		<field name="modified">2012-10-28 14:27:35</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">fusion</field>
		<field name="homepage_url">www.eyeonline.com</field>
	</row>
	<row>
		<field name="id">291</field>
		<field name="name">Illuminaire</field>
		<field name="category_id">2</field>
		<field name="description">Composition and paint software tool arketed as part of the effect product for Windows 95/NT and Mac. This product featured motion tracking, keying, and 3D shadow-casting space much like flint and flame. It was acquired by Discreet Logic from Denim Software in 1998.</field>
		<field name="user_id">2</field>
		<field name="date_1">1997-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 14:28:55</field>
		<field name="modified">2012-10-28 14:28:55</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">illuminaire</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">292</field>
		<field name="name">Inferno</field>
		<field name="category_id">2</field>
		<field name="description">This was the top-of-the-line ($500,000) compositing and effects system from Discreet Logic (now Autodesk). Inferno offers all the basics of flame with added resolution up to 4,000 lines and a unique fully 3D compositing environment.</field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 14:30:43</field>
		<field name="modified">2012-10-28 14:31:58</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">inferno</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">293</field>
		<field name="name">Knockout</field>
		<field name="category_id">2</field>
		<field name="description">This was originally a dedicated, masking, standalone software for the Mac. Originally from Ultimattte, then sold to Corel in 1999 and later available as a plugin for Photoshop and Painter.</field>
		<field name="user_id">2</field>
		<field name="date_1">1999-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 14:33:02</field>
		<field name="modified">2012-10-28 14:33:43</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">knockout</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">294</field>
		<field name="name">Photoshop</field>
		<field name="category_id">2</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-28 14:33:41</field>
		<field name="modified">2012-10-28 14:33:41</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">photoshop</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">295</field>
		<field name="name">Ultimatte</field>
		<field name="category_id">3</field>
		<field name="description">Founded in 1976 by special effects pioneer Petro Vlahos and makers of the patented standalone color-difference extraction software. Originally developed as an analog video keying technology it initially was used extensively at Francis Ford Coppola's Zoetrope Studios in the early 1980s.
Ultimatte is available as a plug-in for just about every major compositing software package including Adobe After Effects, Avid Media Composer, Chyron Concerto, and Liberty, Discreet Logic, and Softimage D|S environments. Ultimatte Corp. also makes the Mac OS-dedicated masking software KnockOut. They are located in Chatsworth, California. 
</field>
		<field name="user_id">2</field>
		<field name="date_1">1976-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 14:34:28</field>
		<field name="modified">2012-10-28 14:47:02</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">ultimatte</field>
		<field name="homepage_url">www.ultimatte.com</field>
	</row>
	<row>
		<field name="id">296</field>
		<field name="name">Media Illusion</field>
		<field name="category_id">2</field>
		<field name="description">This full-featured, high-end effects and compositing software was first available from Avid for the SGI platform. Version 5.0 included the uncompressed nonlinear editing features of Media Composer and integrated Elastic Reality. </field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 14:36:15</field>
		<field name="modified">2012-10-28 14:36:54</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">media-illusion</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">297</field>
		<field name="name">Panoptica</field>
		<field name="category_id">2</field>
		<field name="description">This was a unique software product used to generate flawless background plates; to remove, add, and retouch artifacts; to reshoot scenes with a virtual camera; and to accelerate creation of complex visual effects. Originally available from the Harlequin Group which was purchased by Global Graphics in 1999.</field>
		<field name="user_id">2</field>
		<field name="date_1">1999-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 14:37:45</field>
		<field name="modified">2012-10-28 14:37:45</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">panoptica</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">298</field>
		<field name="name">Primatte</field>
		<field name="category_id">2</field>
		<field name="description">This was chroma keying software available as a standalone for SGI workstations or as a plug-in for Adobe After Effects, Avid, Discreet Logic, and Kinetix products. Licensed by Photron USA and available from Red Giant Software. </field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 14:39:12</field>
		<field name="modified">2012-10-28 14:39:12</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">primatte</field>
		<field name="homepage_url">http://www.redgiantsoftware.com/</field>
	</row>
	<row>
		<field name="id">299</field>
		<field name="name">Shake</field>
		<field name="category_id">2</field>
		<field name="description">Shake was a high-speed node-based compositing software optimized for large image resolutions without the need for specialized hardware. With a data-flow diagram paradigm, it ran on both NT and UNIX. Features included resolution independence and a host of real-time 2D animation and effects tools. Originally from Nothing Real, which was purchased by Apple in 2002 and made available for both Linux and for MacOSX after 2003. Apple discontinued Shake in mid-1999.</field>
		<field name="user_id">2</field>
		<field name="date_1">1999-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 14:42:17</field>
		<field name="modified">2012-10-28 14:43:14</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">shake</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">300</field>
		<field name="name">Petro Vlahos</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-28 14:45:03</field>
		<field name="modified">2012-10-28 14:45:03</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">petro-vlahos</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">301</field>
		<field name="name">Zbig Chromakey</field>
		<field name="category_id">2</field>
		<field name="description">This was advanced chroma key and compositing software from Zbigniew Rybczynski. Features include automatic reflections of background objects and very fine pixel-level control of even the toughest and most unevenly lit screens. It was available as a standalone product for NT, as a plug-in for Adobe After Effects and Discreet Logic effect on Mac and NT, as a spark for other Discreet Logic products, and for Digital Fusion Eyeon software. Zbigniew licensed this software to the Ultimatte Corporation in about 2002.</field>
		<field name="user_id">2</field>
		<field name="date_1">2002-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 14:49:42</field>
		<field name="modified">2012-10-28 14:51:56</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">zbig-chromakey</field>
		<field name="homepage_url">http://www.zbigvision.com/</field>
	</row>
	<row>
		<field name="id">302</field>
		<field name="name">Zbig Rybczynski</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1">1949-01-27 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 14:50:15</field>
		<field name="modified">2012-10-28 14:55:00</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">zbig-rybczynski</field>
		<field name="homepage_url">http://www.zbigvision.com/</field>
	</row>
	<row>
		<field name="id">303</field>
		<field name="name">rendering</field>
		<field name="category_id">2</field>
		<field name="description">There are several identifiable major milestones in the refinement of creating computer-generated renderings. These can most simply be broken down into the following:
1) Wireframe: The simple, vector graphic representation of polylines or surface patch geometry. No solid surface is visible at all.
2) Hidden line: Visible-line determination shows only the portions of an object that face you directly.
3) Surface shading: (1969) Flat shading of one color calculation per polygon. No interpolation at all.
4) Gouraud: (1971) Interpolates individual pixel values from each vertex illumination value.
5) (1975) Interpolates individual pixel values from the polygon surface's normal vectors. Creates realistic specular highlights.
6) Bump mapping (1978)
7) Displacement mapping (1984)
8) Raytracing: (1979) Great for calculating reflections, refractions, and specular lighting.
9) Radiosity: (1984) Great for rendering diffuse global illumination but not so good for specular light. A good compliment to ray tracing.
</field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 18:18:19</field>
		<field name="modified">2012-10-28 18:18:55</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">rendering</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">304</field>
		<field name="name">A-buffer</field>
		<field name="category_id">2</field>
		<field name="description">This is Loren Carpenter's further development of the Z-buffer concept in 1984 as an &quot;anti-aliased hidden surface method.&quot; The A-buffer technique was intended to overcome the main disadvantage of Catmull's earlier Z-buffer method, which had the tendency to produce aliasing artifacts.</field>
		<field name="user_id">2</field>
		<field name="date_1">1984-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 18:19:20</field>
		<field name="modified">2012-10-28 18:19:39</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">a-buffer</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">305</field>
		<field name="name">Advanced Rendering Technology (ART)</field>
		<field name="category_id">2</field>
		<field name="description">ART was founded in 1995 and developed the ART AR250 raytracing chip technology that automatically calculates reflections, refractions, and soft shadows with Pixar's RenderMan shader library. Later operated as ARTVPS providing hardware accelerated rendering solutions for Maya, 3dsMax, VIZ and Catia, now marketed as Shaderlight .. Based in Cambridge, England. </field>
		<field name="user_id">2</field>
		<field name="date_1">1995-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 18:21:48</field>
		<field name="modified">2012-10-28 18:24:09</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">advanced-rendering-technology-art</field>
		<field name="homepage_url">http://www.artvps.com/</field>
	</row>
	<row>
		<field name="id">306</field>
		<field name="name">Afterburn</field>
		<field name="category_id">2</field>
		<field name="description">Like Hypervoxels for LightWave users, Afterburn works with 3D Studio MAX to render realistic volumetric effects such as smoke and fire. It is particle-based with tons of fully animatable parameters, glow effects, and dynamic forces. Originally from Id8media, Inc. now Ideate, Inc. </field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 18:28:18</field>
		<field name="modified">2012-10-28 18:28:46</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">afterburn</field>
		<field name="homepage_url">http://www.ideateinc.com/</field>
	</row>
	<row>
		<field name="id">307</field>
		<field name="name">3D Studio Max</field>
		<field name="category_id">2</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-28 18:28:42</field>
		<field name="modified">2012-10-28 18:28:42</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">3d-studio-max</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">308</field>
		<field name="name">Animal Logic</field>
		<field name="category_id">3</field>
		<field name="description">Animal Logic began in 1991 as a developer of several useful shader and plug-in software products such as SoftMan, a Softimage-to-RenderMan plug-in that enables both Prman and BMRT use from within Softimage; Shader Pack is a collection of mental ray shaders, and ALMB (Animal Logic Motion Blur) is an optional Eddie plug-in that offers an extremely rapid alternative to normal m-ray motion blur. Animal Logic, now a top digital production company, is located in Sydney, Australia. </field>
		<field name="user_id">2</field>
		<field name="date_1">1991-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 18:30:08</field>
		<field name="modified">2012-10-28 18:32:36</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">animal-logic</field>
		<field name="homepage_url">http://www.animallogic.com/</field>
	</row>
	<row>
		<field name="id">309</field>
		<field name="name">Blinn shading</field>
		<field name="category_id">2</field>
		<field name="description">A shading method developed by James Blinn in 1977 that uses diffuse, specular, eccentricity, and refractive index attributes. Increased control over the specular component makes for good representation of metallic surfaces. The Blinn shading model was initially inspired by Phong's work at the University of Utah, and Blinn's desire to represent a more accurate specular lighting model. Blinn then spent many weeks researching extensively at the University library, discovering many papers dating back to the 1920s by an &quot;optical illumination societyâ€ and more recent work was done by Torrance and Sparrow at the University of Minnesota. However all these theories were fairly cumbersome to describe and not directly related to CG. What Blinn did was to codify the theory into a practical light reflection model that was both physically based and accurate. 
The Blinn shading model was later expanded upon by Ken Torrance and Rob Cook at the University of Cornell.
</field>
		<field name="user_id">2</field>
		<field name="date_1">1997-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 18:33:32</field>
		<field name="modified">2012-10-29 12:00:14</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">blinn-shading</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">310</field>
		<field name="name">Ken Torrance</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1">2000-01-01 00:00:00</field>
		<field name="date_2">2010-02-15 00:00:00</field>
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 18:34:42</field>
		<field name="modified">2012-10-28 18:38:31</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">ken-torrance</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">311</field>
		<field name="name">Cornell University</field>
		<field name="category_id">3</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-28 18:36:42</field>
		<field name="modified">2012-10-28 18:36:42</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">cornell-university</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">312</field>
		<field name="name">Cornell box</field>
		<field name="category_id">2</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1">1984-06-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 18:41:08</field>
		<field name="modified">2012-10-28 18:43:36</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">cornell-box</field>
		<field name="homepage_url">http://www.graphics.cornell.edu/online/box/history.html</field>
	</row>
	<row>
		<field name="id">313</field>
		<field name="name">Donald Greenberg</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-28 18:44:22</field>
		<field name="modified">2012-10-28 18:44:22</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">donald-greenberg</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">314</field>
		<field name="name">Blue Moon Rendering Tools ( BMRT )</field>
		<field name="category_id">2</field>
		<field name="description">Blue Moon Rendering Tools was a shareware toolkit for rendering 3D images written by Larry Gritz based on his work at George Washington University. BMRT supported such features as raytracing, radiosity, and area light sources as well as more standard features such as texture and environment mapping. It was made available in 1995 for SGI, Sun SPARC, Linux, NextStep, and Windows. In 2000 Larry and several co-workers formed Exluna to replace BMRT with a new Renderman renderer called entropy. Unfortunately after some legal words with Pixar that product and the new company were discontinued in 2002. Larry has been at Nvidia for some time now developing next generation hardware rendering solutions.</field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 18:47:17</field>
		<field name="modified">2012-10-28 18:47:17</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">blue-moon-rendering-tools-bmrt-</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">315</field>
		<field name="name">Larry Gritz</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-28 18:48:49</field>
		<field name="modified">2012-10-28 18:48:49</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">larry-gritz</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">316</field>
		<field name="name">Brazil r/s </field>
		<field name="category_id">2</field>
		<field name="description">From SplutterFish LLC, the Brazil rendering system is an uncompromising professional renderer for 3ds Max and Autodesk VIZ products. Utilizing advanced global illumination and raytracing techniques it is designed to be both easy to use and production friendly. As of March 2004 Brazil Rio has been made available as a free personal use edition. The brainchild of Scott Kirvan and Steven Blackmon. </field>
		<field name="user_id">2</field>
		<field name="date_1">2004-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 18:51:19</field>
		<field name="modified">2012-10-28 18:54:27</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">brazil-r-s-</field>
		<field name="homepage_url">www.splutterfish.com</field>
	</row>
	<row>
		<field name="id">317</field>
		<field name="name">CAPS ( Computer Animation Production System )</field>
		<field name="category_id">2</field>
		<field name="description">CAPS was the Computer Animation Production System that computerizes traditional ink and paint methods and adds many multiplane animation camera techniques and effects. </field>
		<field name="user_id">2</field>
		<field name="date_1">1991-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 11:26:37</field>
		<field name="modified">2012-10-29 11:27:21</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">caps-computer-animation-production-system-</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">318</field>
		<field name="name">Gouraud shading</field>
		<field name="category_id">2</field>
		<field name="description">Gouraud (Ph.D., University of Utah, 1971) to add a smooth alternative to flat shading. Although it does not affect the polygonal profile of the object, it does approximate a single continuous surface for rendering purposes.</field>
		<field name="user_id">2</field>
		<field name="date_1">1971-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 11:33:36</field>
		<field name="modified">2012-10-29 11:33:53</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">gouraud-shading</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">319</field>
		<field name="name">hidden surface removal</field>
		<field name="category_id">2</field>
		<field name="description">This is the process of determining which surfaces are visible and which are occluded, or hidden, by others closer to the camera. This also is called visible-surface determination. The self-named &quot;warnock recursive subdivision algorithms for hidden surface elimination&quot; were developed by John Warnock (Ph.D., University of Utah, 1969).</field>
		<field name="user_id">2</field>
		<field name="date_1">1969-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 11:35:30</field>
		<field name="modified">2012-10-29 11:35:30</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">hidden-surface-removal</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">320</field>
		<field name="name">John Warnock</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1">1940-10-06 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 11:36:03</field>
		<field name="modified">2012-10-29 11:38:39</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">john-warnock</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">321</field>
		<field name="name">Adobe Systems</field>
		<field name="category_id">3</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-29 11:37:49</field>
		<field name="modified">2012-10-29 11:37:49</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">adobe-systems</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">322</field>
		<field name="name">Mental Ray</field>
		<field name="category_id">2</field>
		<field name="description">This professional rendering software was developed by mental images and first released commercially in 1989. First used mainly as an SGI-based alternative renderer to SoftImage's own output in 1993, and is now integrated with and supported by virtually all high-end animation software packages. Mental Images is located in Berlin, Germany .. having been purchased by Nvidia in 2007</field>
		<field name="user_id">2</field>
		<field name="date_1">1989-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 11:56:12</field>
		<field name="modified">2012-10-29 11:57:27</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">mental-ray</field>
		<field name="homepage_url">http://www.mentalimages.com/</field>
	</row>
	<row>
		<field name="id">323</field>
		<field name="name">Phong shading</field>
		<field name="category_id">2</field>
		<field name="description">This is a shader method developed by Bui Tuong-Phong (Ph.D., University of Utah, 1975). It introduces the specular reflection component of surfaces giving shiny highlights. It interpolates the vertex normal as opposed to the vertex intensity as in Gouraud shading. It is best for representing plastic surfaces.</field>
		<field name="user_id">2</field>
		<field name="date_1">1975-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 11:59:27</field>
		<field name="modified">2012-10-29 11:59:27</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">phong-shading</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">324</field>
		<field name="name">Radiance Synthetic Imaging System</field>
		<field name="category_id">2</field>
		<field name="description">The Radiance Synthetic Imaging System is UNIX freeware used for lighting design and rendering. It was developed by Greg Ward Larson at Lawrence Berkeley National Laboratory with funding from the U.S. Department of Energy and the Swiss federal government, and it is copyrighted by the Regents of the University of California.</field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 12:04:18</field>
		<field name="modified">2012-10-29 12:07:36</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">radiance-synthetic-imaging-system</field>
		<field name="homepage_url">http://radsite.lbl.gov/radiance/HOME.html </field>
	</row>
	<row>
		<field name="id">325</field>
		<field name="name">Greg Ward Larson</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-29 12:07:56</field>
		<field name="modified">2012-10-29 12:07:56</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">greg-ward-larson</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">326</field>
		<field name="name">Alan Kay</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1">1940-05-17 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 12:13:47</field>
		<field name="modified">2012-10-29 12:16:24</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">alan-kay</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">327</field>
		<field name="name">RenderMan Interface Specification</field>
		<field name="category_id">2</field>
		<field name="description">RenderMan is a standardized interface specification for sending modeling and animation data to a rendering system. It is not a renderer itself, as is often believed. RenderMan was developed  at Pixar in 1986, was patented in 1988, and was publicly introduced in 1989.</field>
		<field name="user_id">2</field>
		<field name="date_1">1986-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 12:24:44</field>
		<field name="modified">2012-10-29 12:29:30</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">renderman</field>
		<field name="homepage_url">http://renderman.pixar.com</field>
	</row>
	<row>
		<field name="id">328</field>
		<field name="name">Thomas Porter</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-29 12:31:36</field>
		<field name="modified">2012-10-29 12:31:36</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">thomas-porter</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">329</field>
		<field name="name">Tony Apodaca</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-29 12:32:01</field>
		<field name="modified">2012-10-29 12:32:01</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">tony-apodaca</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">330</field>
		<field name="name">Darwyn Peachey</field>
		<field name="category_id">1</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-29 12:32:25</field>
		<field name="modified">2012-10-29 12:32:25</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">darwyn-peachey</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">331</field>
		<field name="name">REYES</field>
		<field name="category_id">2</field>
		<field name="description">Named after the Pt.Reyes area of Marin but more fondly standing for &quot;Render Everything You Ever Saw.&quot; This render code was written by Loren Carpenter and Rob Cook for Lucasfilm in 1981. Much of this code found its way into Pixar's RenderMan renderer, Photorealistic RenderMan (PRMAN).</field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 12:36:06</field>
		<field name="modified">2012-10-29 12:36:06</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">reyes</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">332</field>
		<field name="name">Red's Dream</field>
		<field name="category_id">2</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1">1987-04-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 12:37:29</field>
		<field name="modified">2012-10-29 12:37:50</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">reds-dream</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">333</field>
		<field name="name">V-Ray</field>
		<field name="category_id">2</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1">2002-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 12:41:08</field>
		<field name="modified">2012-10-29 12:41:08</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">v-ray</field>
		<field name="homepage_url">http://www.chaosgroup.com/</field>
	</row>
	<row>
		<field name="id">334</field>
		<field name="name">Z-buffer</field>
		<field name="category_id">2</field>
		<field name="description">A visible-surface determination method in which each pixel records (in addition to color) its distance from the camera. As each surface is scan converted, overlapping pixels are sorted so that only the ones closest to the camera ultimately get rendered. Although this is great for optimizing reasons, it also prone is to aliasing artifacts. It was developed by Ed Catmull in 1974 at the University of Utah.</field>
		<field name="user_id">2</field>
		<field name="date_1">1974-01-01 00:00:00</field>
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 13:25:45</field>
		<field name="modified">2012-10-29 13:26:23</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">z-buffer</field>
		<field name="homepage_url"></field>
	</row>
	<row>
		<field name="id">335</field>
		<field name="name">Optomystic</field>
		<field name="category_id">3</field>
		<field name="description"></field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-29 15:11:10</field>
		<field name="modified">2012-10-29 15:11:10</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
		<field name="slug">optomystic</field>
		<field name="homepage_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">336</field>
		<field name="name">Mom</field>
		<field name="category_id">1</field>
		<field name="description">ljshdfhj
</field>
		<field name="user_id">2</field>
		<field name="date_1" xsi:nil="true" />
		<field name="date_2" xsi:nil="true" />
		<field name="location_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-12-12 13:21:45</field>
		<field name="modified">2012-12-12 13:21:45</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
		<field name="slug">mom</field>
		<field name="homepage_url"></field>
	</row>
	</table_data>
	<table_structure name="entries_stories">
		<field Field="id" Type="int(11) unsigned" Null="NO" Key="PRI" Extra="auto_increment" />
		<field Field="entry_id" Type="int(11) unsigned" Null="NO" Key="MUL" Extra="" />
		<field Field="story_id" Type="int(11) unsigned" Null="NO" Key="MUL" Extra="" />
		<field Field="user_id" Type="int(11) unsigned" Null="NO" Key="" Extra="" />
		<key Table="entries_stories" Non_unique="0" Key_name="PRIMARY" Seq_in_index="1" Column_name="id" Collation="A" Cardinality="323" Null="" Index_type="BTREE" Comment="" />
		<key Table="entries_stories" Non_unique="1" Key_name="entry_id" Seq_in_index="1" Column_name="entry_id" Collation="A" Cardinality="323" Null="" Index_type="BTREE" Comment="" />
		<key Table="entries_stories" Non_unique="1" Key_name="story_id" Seq_in_index="1" Column_name="story_id" Collation="A" Cardinality="323" Null="" Index_type="BTREE" Comment="" />
		<options Name="entries_stories" Engine="InnoDB" Version="10" Row_format="Compact" Rows="323" Avg_row_length="50" Data_length="16384" Max_data_length="0" Index_length="32768" Data_free="10485760" Auto_increment="333" Create_time="2012-03-27 02:57:56" Collation="utf8_general_ci" Create_options="" Comment="" />
	</table_structure>
	<table_data name="entries_stories">
	<row>
		<field name="id">1</field>
		<field name="entry_id">1</field>
		<field name="story_id">1</field>
		<field name="user_id">1</field>
	</row>
	<row>
		<field name="id">2</field>
		<field name="entry_id">2</field>
		<field name="story_id">2</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">3</field>
		<field name="entry_id">2</field>
		<field name="story_id">3</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">4</field>
		<field name="entry_id">5</field>
		<field name="story_id">4</field>
		<field name="user_id">5</field>
	</row>
	<row>
		<field name="id">6</field>
		<field name="entry_id">6</field>
		<field name="story_id">6</field>
		<field name="user_id">5</field>
	</row>
	<row>
		<field name="id">8</field>
		<field name="entry_id">7</field>
		<field name="story_id">8</field>
		<field name="user_id">5</field>
	</row>
	<row>
		<field name="id">10</field>
		<field name="entry_id">10</field>
		<field name="story_id">10</field>
		<field name="user_id">5</field>
	</row>
	<row>
		<field name="id">11</field>
		<field name="entry_id">10</field>
		<field name="story_id">11</field>
		<field name="user_id">5</field>
	</row>
	<row>
		<field name="id">12</field>
		<field name="entry_id">11</field>
		<field name="story_id">12</field>
		<field name="user_id">5</field>
	</row>
	<row>
		<field name="id">14</field>
		<field name="entry_id">12</field>
		<field name="story_id">14</field>
		<field name="user_id">4</field>
	</row>
	<row>
		<field name="id">16</field>
		<field name="entry_id">14</field>
		<field name="story_id">16</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">17</field>
		<field name="entry_id">11</field>
		<field name="story_id">17</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">18</field>
		<field name="entry_id">19</field>
		<field name="story_id">18</field>
		<field name="user_id">6</field>
	</row>
	<row>
		<field name="id">19</field>
		<field name="entry_id">11</field>
		<field name="story_id">19</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">20</field>
		<field name="entry_id">22</field>
		<field name="story_id">20</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">21</field>
		<field name="entry_id">24</field>
		<field name="story_id">21</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">22</field>
		<field name="entry_id">25</field>
		<field name="story_id">22</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">25</field>
		<field name="entry_id">21</field>
		<field name="story_id">25</field>
		<field name="user_id">6</field>
	</row>
	<row>
		<field name="id">26</field>
		<field name="entry_id">29</field>
		<field name="story_id">26</field>
		<field name="user_id">5</field>
	</row>
	<row>
		<field name="id">27</field>
		<field name="entry_id">29</field>
		<field name="story_id">27</field>
		<field name="user_id">5</field>
	</row>
	<row>
		<field name="id">28</field>
		<field name="entry_id">32</field>
		<field name="story_id">28</field>
		<field name="user_id">6</field>
	</row>
	<row>
		<field name="id">30</field>
		<field name="entry_id">34</field>
		<field name="story_id">30</field>
		<field name="user_id">3</field>
	</row>
	<row>
		<field name="id">31</field>
		<field name="entry_id">12</field>
		<field name="story_id">31</field>
		<field name="user_id">4</field>
	</row>
	<row>
		<field name="id">32</field>
		<field name="entry_id">1</field>
		<field name="story_id">32</field>
		<field name="user_id">4</field>
	</row>
	<row>
		<field name="id">33</field>
		<field name="entry_id">12</field>
		<field name="story_id">33</field>
		<field name="user_id">4</field>
	</row>
	<row>
		<field name="id">34</field>
		<field name="entry_id">36</field>
		<field name="story_id">34</field>
		<field name="user_id">4</field>
	</row>
	<row>
		<field name="id">35</field>
		<field name="entry_id">34</field>
		<field name="story_id">35</field>
		<field name="user_id">4</field>
	</row>
	<row>
		<field name="id">36</field>
		<field name="entry_id">34</field>
		<field name="story_id">36</field>
		<field name="user_id">4</field>
	</row>
	<row>
		<field name="id">37</field>
		<field name="entry_id">34</field>
		<field name="story_id">37</field>
		<field name="user_id">3</field>
	</row>
	<row>
		<field name="id">38</field>
		<field name="entry_id">4</field>
		<field name="story_id">38</field>
		<field name="user_id">4</field>
	</row>
	<row>
		<field name="id">39</field>
		<field name="entry_id">40</field>
		<field name="story_id">39</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">40</field>
		<field name="entry_id">40</field>
		<field name="story_id">40</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">41</field>
		<field name="entry_id">40</field>
		<field name="story_id">41</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">42</field>
		<field name="entry_id">40</field>
		<field name="story_id">42</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">43</field>
		<field name="entry_id">43</field>
		<field name="story_id">43</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">44</field>
		<field name="entry_id">43</field>
		<field name="story_id">44</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">45</field>
		<field name="entry_id">47</field>
		<field name="story_id">45</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">46</field>
		<field name="entry_id">48</field>
		<field name="story_id">46</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">47</field>
		<field name="entry_id">52</field>
		<field name="story_id">47</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">48</field>
		<field name="entry_id">56</field>
		<field name="story_id">48</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">49</field>
		<field name="entry_id">58</field>
		<field name="story_id">49</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">50</field>
		<field name="entry_id">58</field>
		<field name="story_id">50</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">51</field>
		<field name="entry_id">63</field>
		<field name="story_id">51</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">52</field>
		<field name="entry_id">65</field>
		<field name="story_id">52</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">53</field>
		<field name="entry_id">65</field>
		<field name="story_id">53</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">54</field>
		<field name="entry_id">65</field>
		<field name="story_id">54</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">55</field>
		<field name="entry_id">72</field>
		<field name="story_id">55</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">56</field>
		<field name="entry_id">77</field>
		<field name="story_id">56</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">57</field>
		<field name="entry_id">77</field>
		<field name="story_id">57</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">58</field>
		<field name="entry_id">77</field>
		<field name="story_id">58</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">59</field>
		<field name="entry_id">90</field>
		<field name="story_id">59</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">60</field>
		<field name="entry_id">90</field>
		<field name="story_id">60</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">61</field>
		<field name="entry_id">93</field>
		<field name="story_id">61</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">62</field>
		<field name="entry_id">95</field>
		<field name="story_id">62</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">63</field>
		<field name="entry_id">98</field>
		<field name="story_id">63</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">64</field>
		<field name="entry_id">98</field>
		<field name="story_id">64</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">65</field>
		<field name="entry_id">104</field>
		<field name="story_id">65</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">66</field>
		<field name="entry_id">104</field>
		<field name="story_id">66</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">67</field>
		<field name="entry_id">104</field>
		<field name="story_id">67</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">68</field>
		<field name="entry_id">104</field>
		<field name="story_id">68</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">69</field>
		<field name="entry_id">104</field>
		<field name="story_id">69</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">70</field>
		<field name="entry_id">104</field>
		<field name="story_id">70</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">71</field>
		<field name="entry_id">113</field>
		<field name="story_id">71</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">72</field>
		<field name="entry_id">114</field>
		<field name="story_id">72</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">73</field>
		<field name="entry_id">114</field>
		<field name="story_id">73</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">74</field>
		<field name="entry_id">114</field>
		<field name="story_id">74</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">75</field>
		<field name="entry_id">114</field>
		<field name="story_id">75</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">76</field>
		<field name="entry_id">114</field>
		<field name="story_id">76</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">77</field>
		<field name="entry_id">114</field>
		<field name="story_id">77</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">78</field>
		<field name="entry_id">119</field>
		<field name="story_id">78</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">79</field>
		<field name="entry_id">122</field>
		<field name="story_id">79</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">80</field>
		<field name="entry_id">127</field>
		<field name="story_id">80</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">81</field>
		<field name="entry_id">127</field>
		<field name="story_id">81</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">82</field>
		<field name="entry_id">127</field>
		<field name="story_id">82</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">83</field>
		<field name="entry_id">127</field>
		<field name="story_id">83</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">84</field>
		<field name="entry_id">127</field>
		<field name="story_id">84</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">85</field>
		<field name="entry_id">22</field>
		<field name="story_id">85</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">86</field>
		<field name="entry_id">22</field>
		<field name="story_id">86</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">87</field>
		<field name="entry_id">22</field>
		<field name="story_id">87</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">88</field>
		<field name="entry_id">135</field>
		<field name="story_id">88</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">89</field>
		<field name="entry_id">135</field>
		<field name="story_id">89</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">90</field>
		<field name="entry_id">135</field>
		<field name="story_id">90</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">91</field>
		<field name="entry_id">135</field>
		<field name="story_id">91</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">92</field>
		<field name="entry_id">135</field>
		<field name="story_id">92</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">93</field>
		<field name="entry_id">135</field>
		<field name="story_id">93</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">94</field>
		<field name="entry_id">135</field>
		<field name="story_id">94</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">95</field>
		<field name="entry_id">135</field>
		<field name="story_id">95</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">96</field>
		<field name="entry_id">135</field>
		<field name="story_id">96</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">97</field>
		<field name="entry_id">135</field>
		<field name="story_id">97</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">98</field>
		<field name="entry_id">137</field>
		<field name="story_id">98</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">99</field>
		<field name="entry_id">137</field>
		<field name="story_id">99</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">100</field>
		<field name="entry_id">137</field>
		<field name="story_id">100</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">101</field>
		<field name="entry_id">137</field>
		<field name="story_id">101</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">102</field>
		<field name="entry_id">139</field>
		<field name="story_id">102</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">103</field>
		<field name="entry_id">139</field>
		<field name="story_id">103</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">104</field>
		<field name="entry_id">139</field>
		<field name="story_id">104</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">105</field>
		<field name="entry_id">139</field>
		<field name="story_id">105</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">106</field>
		<field name="entry_id">139</field>
		<field name="story_id">106</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">107</field>
		<field name="entry_id">144</field>
		<field name="story_id">107</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">108</field>
		<field name="entry_id">144</field>
		<field name="story_id">108</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">109</field>
		<field name="entry_id">144</field>
		<field name="story_id">109</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">110</field>
		<field name="entry_id">144</field>
		<field name="story_id">110</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">111</field>
		<field name="entry_id">144</field>
		<field name="story_id">111</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">112</field>
		<field name="entry_id">147</field>
		<field name="story_id">112</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">113</field>
		<field name="entry_id">147</field>
		<field name="story_id">113</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">114</field>
		<field name="entry_id">147</field>
		<field name="story_id">114</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">115</field>
		<field name="entry_id">150</field>
		<field name="story_id">115</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">116</field>
		<field name="entry_id">153</field>
		<field name="story_id">116</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">117</field>
		<field name="entry_id">153</field>
		<field name="story_id">117</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">118</field>
		<field name="entry_id">155</field>
		<field name="story_id">118</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">119</field>
		<field name="entry_id">155</field>
		<field name="story_id">119</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">120</field>
		<field name="entry_id">155</field>
		<field name="story_id">120</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">121</field>
		<field name="entry_id">160</field>
		<field name="story_id">121</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">122</field>
		<field name="entry_id">155</field>
		<field name="story_id">122</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">123</field>
		<field name="entry_id">155</field>
		<field name="story_id">123</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">124</field>
		<field name="entry_id">155</field>
		<field name="story_id">124</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">125</field>
		<field name="entry_id">155</field>
		<field name="story_id">125</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">126</field>
		<field name="entry_id">155</field>
		<field name="story_id">126</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">127</field>
		<field name="entry_id">155</field>
		<field name="story_id">127</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">128</field>
		<field name="entry_id">155</field>
		<field name="story_id">128</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">129</field>
		<field name="entry_id">155</field>
		<field name="story_id">129</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">130</field>
		<field name="entry_id">166</field>
		<field name="story_id">130</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">131</field>
		<field name="entry_id">167</field>
		<field name="story_id">131</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">132</field>
		<field name="entry_id">167</field>
		<field name="story_id">132</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">133</field>
		<field name="entry_id">167</field>
		<field name="story_id">133</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">134</field>
		<field name="entry_id">167</field>
		<field name="story_id">134</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">135</field>
		<field name="entry_id">167</field>
		<field name="story_id">135</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">136</field>
		<field name="entry_id">167</field>
		<field name="story_id">136</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">137</field>
		<field name="entry_id">167</field>
		<field name="story_id">137</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">138</field>
		<field name="entry_id">167</field>
		<field name="story_id">138</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">139</field>
		<field name="entry_id">167</field>
		<field name="story_id">139</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">140</field>
		<field name="entry_id">167</field>
		<field name="story_id">140</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">141</field>
		<field name="entry_id">167</field>
		<field name="story_id">141</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">142</field>
		<field name="entry_id">168</field>
		<field name="story_id">142</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">143</field>
		<field name="entry_id">171</field>
		<field name="story_id">143</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">144</field>
		<field name="entry_id">171</field>
		<field name="story_id">144</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">145</field>
		<field name="entry_id">171</field>
		<field name="story_id">145</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">146</field>
		<field name="entry_id">171</field>
		<field name="story_id">146</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">147</field>
		<field name="entry_id">171</field>
		<field name="story_id">147</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">148</field>
		<field name="entry_id">171</field>
		<field name="story_id">148</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">149</field>
		<field name="entry_id">171</field>
		<field name="story_id">149</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">150</field>
		<field name="entry_id">175</field>
		<field name="story_id">150</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">151</field>
		<field name="entry_id">177</field>
		<field name="story_id">151</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">152</field>
		<field name="entry_id">175</field>
		<field name="story_id">152</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">153</field>
		<field name="entry_id">166</field>
		<field name="story_id">153</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">154</field>
		<field name="entry_id">166</field>
		<field name="story_id">154</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">155</field>
		<field name="entry_id">166</field>
		<field name="story_id">155</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">156</field>
		<field name="entry_id">166</field>
		<field name="story_id">156</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">157</field>
		<field name="entry_id">182</field>
		<field name="story_id">157</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">158</field>
		<field name="entry_id">182</field>
		<field name="story_id">158</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">159</field>
		<field name="entry_id">182</field>
		<field name="story_id">159</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">160</field>
		<field name="entry_id">182</field>
		<field name="story_id">160</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">161</field>
		<field name="entry_id">182</field>
		<field name="story_id">161</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">162</field>
		<field name="entry_id">88</field>
		<field name="story_id">162</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">163</field>
		<field name="entry_id">185</field>
		<field name="story_id">163</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">164</field>
		<field name="entry_id">185</field>
		<field name="story_id">164</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">165</field>
		<field name="entry_id">185</field>
		<field name="story_id">165</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">166</field>
		<field name="entry_id">185</field>
		<field name="story_id">166</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">167</field>
		<field name="entry_id">185</field>
		<field name="story_id">167</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">168</field>
		<field name="entry_id">185</field>
		<field name="story_id">168</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">169</field>
		<field name="entry_id">185</field>
		<field name="story_id">169</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">170</field>
		<field name="entry_id">185</field>
		<field name="story_id">170</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">171</field>
		<field name="entry_id">30</field>
		<field name="story_id">171</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">172</field>
		<field name="entry_id">30</field>
		<field name="story_id">172</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">173</field>
		<field name="entry_id">30</field>
		<field name="story_id">173</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">174</field>
		<field name="entry_id">30</field>
		<field name="story_id">174</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">175</field>
		<field name="entry_id">30</field>
		<field name="story_id">175</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">176</field>
		<field name="entry_id">30</field>
		<field name="story_id">176</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">177</field>
		<field name="entry_id">30</field>
		<field name="story_id">177</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">178</field>
		<field name="entry_id">30</field>
		<field name="story_id">178</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">179</field>
		<field name="entry_id">30</field>
		<field name="story_id">179</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">180</field>
		<field name="entry_id">30</field>
		<field name="story_id">180</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">181</field>
		<field name="entry_id">30</field>
		<field name="story_id">181</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">182</field>
		<field name="entry_id">6</field>
		<field name="story_id">182</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">183</field>
		<field name="entry_id">6</field>
		<field name="story_id">183</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">184</field>
		<field name="entry_id">6</field>
		<field name="story_id">184</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">185</field>
		<field name="entry_id">6</field>
		<field name="story_id">185</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">186</field>
		<field name="entry_id">6</field>
		<field name="story_id">186</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">187</field>
		<field name="entry_id">6</field>
		<field name="story_id">187</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">188</field>
		<field name="entry_id">6</field>
		<field name="story_id">188</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">189</field>
		<field name="entry_id">6</field>
		<field name="story_id">189</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">190</field>
		<field name="entry_id">6</field>
		<field name="story_id">190</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">191</field>
		<field name="entry_id">201</field>
		<field name="story_id">191</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">192</field>
		<field name="entry_id">201</field>
		<field name="story_id">192</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">193</field>
		<field name="entry_id">201</field>
		<field name="story_id">193</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">194</field>
		<field name="entry_id">201</field>
		<field name="story_id">194</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">195</field>
		<field name="entry_id">202</field>
		<field name="story_id">195</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">196</field>
		<field name="entry_id">204</field>
		<field name="story_id">196</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">197</field>
		<field name="entry_id">204</field>
		<field name="story_id">197</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">198</field>
		<field name="entry_id">204</field>
		<field name="story_id">198</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">199</field>
		<field name="entry_id">204</field>
		<field name="story_id">199</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">200</field>
		<field name="entry_id">204</field>
		<field name="story_id">200</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">201</field>
		<field name="entry_id">207</field>
		<field name="story_id">201</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">202</field>
		<field name="entry_id">207</field>
		<field name="story_id">202</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">203</field>
		<field name="entry_id">207</field>
		<field name="story_id">203</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">204</field>
		<field name="entry_id">207</field>
		<field name="story_id">204</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">205</field>
		<field name="entry_id">207</field>
		<field name="story_id">205</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">206</field>
		<field name="entry_id">207</field>
		<field name="story_id">206</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">207</field>
		<field name="entry_id">207</field>
		<field name="story_id">207</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">208</field>
		<field name="entry_id">207</field>
		<field name="story_id">208</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">209</field>
		<field name="entry_id">207</field>
		<field name="story_id">209</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">210</field>
		<field name="entry_id">213</field>
		<field name="story_id">210</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">211</field>
		<field name="entry_id">220</field>
		<field name="story_id">211</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">212</field>
		<field name="entry_id">220</field>
		<field name="story_id">212</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">213</field>
		<field name="entry_id">220</field>
		<field name="story_id">213</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">214</field>
		<field name="entry_id">220</field>
		<field name="story_id">214</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">215</field>
		<field name="entry_id">188</field>
		<field name="story_id">215</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">216</field>
		<field name="entry_id">224</field>
		<field name="story_id">216</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">217</field>
		<field name="entry_id">224</field>
		<field name="story_id">217</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">218</field>
		<field name="entry_id">64</field>
		<field name="story_id">218</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">219</field>
		<field name="entry_id">225</field>
		<field name="story_id">219</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">220</field>
		<field name="entry_id">225</field>
		<field name="story_id">220</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">221</field>
		<field name="entry_id">123</field>
		<field name="story_id">221</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">222</field>
		<field name="entry_id">123</field>
		<field name="story_id">222</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">223</field>
		<field name="entry_id">124</field>
		<field name="story_id">223</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">224</field>
		<field name="entry_id">124</field>
		<field name="story_id">224</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">225</field>
		<field name="entry_id">124</field>
		<field name="story_id">225</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">226</field>
		<field name="entry_id">229</field>
		<field name="story_id">226</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">227</field>
		<field name="entry_id">229</field>
		<field name="story_id">227</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">228</field>
		<field name="entry_id">229</field>
		<field name="story_id">228</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">229</field>
		<field name="entry_id">229</field>
		<field name="story_id">229</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">230</field>
		<field name="entry_id">229</field>
		<field name="story_id">230</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">231</field>
		<field name="entry_id">229</field>
		<field name="story_id">231</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">232</field>
		<field name="entry_id">229</field>
		<field name="story_id">232</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">233</field>
		<field name="entry_id">234</field>
		<field name="story_id">233</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">234</field>
		<field name="entry_id">234</field>
		<field name="story_id">234</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">235</field>
		<field name="entry_id">236</field>
		<field name="story_id">235</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">236</field>
		<field name="entry_id">238</field>
		<field name="story_id">236</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">237</field>
		<field name="entry_id">238</field>
		<field name="story_id">237</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">238</field>
		<field name="entry_id">239</field>
		<field name="story_id">238</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">239</field>
		<field name="entry_id">239</field>
		<field name="story_id">239</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">240</field>
		<field name="entry_id">239</field>
		<field name="story_id">240</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">241</field>
		<field name="entry_id">239</field>
		<field name="story_id">241</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">242</field>
		<field name="entry_id">240</field>
		<field name="story_id">242</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">243</field>
		<field name="entry_id">240</field>
		<field name="story_id">243</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">244</field>
		<field name="entry_id">240</field>
		<field name="story_id">244</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">245</field>
		<field name="entry_id">242</field>
		<field name="story_id">245</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">246</field>
		<field name="entry_id">242</field>
		<field name="story_id">246</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">247</field>
		<field name="entry_id">242</field>
		<field name="story_id">247</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">248</field>
		<field name="entry_id">242</field>
		<field name="story_id">248</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">249</field>
		<field name="entry_id">246</field>
		<field name="story_id">249</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">250</field>
		<field name="entry_id">246</field>
		<field name="story_id">250</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">251</field>
		<field name="entry_id">246</field>
		<field name="story_id">251</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">252</field>
		<field name="entry_id">246</field>
		<field name="story_id">252</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">253</field>
		<field name="entry_id">246</field>
		<field name="story_id">253</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">254</field>
		<field name="entry_id">246</field>
		<field name="story_id">254</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">255</field>
		<field name="entry_id">246</field>
		<field name="story_id">255</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">256</field>
		<field name="entry_id">246</field>
		<field name="story_id">256</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">257</field>
		<field name="entry_id">246</field>
		<field name="story_id">257</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">258</field>
		<field name="entry_id">246</field>
		<field name="story_id">258</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">259</field>
		<field name="entry_id">248</field>
		<field name="story_id">259</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">260</field>
		<field name="entry_id">248</field>
		<field name="story_id">260</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">261</field>
		<field name="entry_id">248</field>
		<field name="story_id">261</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">262</field>
		<field name="entry_id">248</field>
		<field name="story_id">262</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">263</field>
		<field name="entry_id">248</field>
		<field name="story_id">263</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">264</field>
		<field name="entry_id">249</field>
		<field name="story_id">264</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">265</field>
		<field name="entry_id">249</field>
		<field name="story_id">265</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">266</field>
		<field name="entry_id">205</field>
		<field name="story_id">266</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">267</field>
		<field name="entry_id">205</field>
		<field name="story_id">267</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">268</field>
		<field name="entry_id">205</field>
		<field name="story_id">268</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">269</field>
		<field name="entry_id">205</field>
		<field name="story_id">269</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">270</field>
		<field name="entry_id">205</field>
		<field name="story_id">270</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">271</field>
		<field name="entry_id">203</field>
		<field name="story_id">271</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">272</field>
		<field name="entry_id">203</field>
		<field name="story_id">272</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">273</field>
		<field name="entry_id">203</field>
		<field name="story_id">273</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">274</field>
		<field name="entry_id">203</field>
		<field name="story_id">274</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">275</field>
		<field name="entry_id">203</field>
		<field name="story_id">275</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">276</field>
		<field name="entry_id">203</field>
		<field name="story_id">276</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">277</field>
		<field name="entry_id">203</field>
		<field name="story_id">277</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">278</field>
		<field name="entry_id">203</field>
		<field name="story_id">278</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">279</field>
		<field name="entry_id">203</field>
		<field name="story_id">279</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">280</field>
		<field name="entry_id">203</field>
		<field name="story_id">280</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">281</field>
		<field name="entry_id">203</field>
		<field name="story_id">281</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">282</field>
		<field name="entry_id">252</field>
		<field name="story_id">282</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">283</field>
		<field name="entry_id">252</field>
		<field name="story_id">283</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">285</field>
		<field name="entry_id">253</field>
		<field name="story_id">285</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">286</field>
		<field name="entry_id">254</field>
		<field name="story_id">286</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">287</field>
		<field name="entry_id">254</field>
		<field name="story_id">287</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">288</field>
		<field name="entry_id">245</field>
		<field name="story_id">288</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">289</field>
		<field name="entry_id">258</field>
		<field name="story_id">289</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">290</field>
		<field name="entry_id">259</field>
		<field name="story_id">290</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">291</field>
		<field name="entry_id">259</field>
		<field name="story_id">291</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">292</field>
		<field name="entry_id">259</field>
		<field name="story_id">292</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">293</field>
		<field name="entry_id">259</field>
		<field name="story_id">293</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">294</field>
		<field name="entry_id">259</field>
		<field name="story_id">294</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">295</field>
		<field name="entry_id">259</field>
		<field name="story_id">295</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">296</field>
		<field name="entry_id">259</field>
		<field name="story_id">296</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">297</field>
		<field name="entry_id">46</field>
		<field name="story_id">297</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">298</field>
		<field name="entry_id">46</field>
		<field name="story_id">298</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">299</field>
		<field name="entry_id">46</field>
		<field name="story_id">299</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">300</field>
		<field name="entry_id">265</field>
		<field name="story_id">300</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">301</field>
		<field name="entry_id">46</field>
		<field name="story_id">301</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">302</field>
		<field name="entry_id">46</field>
		<field name="story_id">302</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">303</field>
		<field name="entry_id">267</field>
		<field name="story_id">303</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">304</field>
		<field name="entry_id">268</field>
		<field name="story_id">304</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">305</field>
		<field name="entry_id">268</field>
		<field name="story_id">305</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">306</field>
		<field name="entry_id">185</field>
		<field name="story_id">306</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">307</field>
		<field name="entry_id">129</field>
		<field name="story_id">307</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">308</field>
		<field name="entry_id">269</field>
		<field name="story_id">308</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">309</field>
		<field name="entry_id">269</field>
		<field name="story_id">309</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">310</field>
		<field name="entry_id">269</field>
		<field name="story_id">310</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">311</field>
		<field name="entry_id">269</field>
		<field name="story_id">311</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">312</field>
		<field name="entry_id">269</field>
		<field name="story_id">312</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">313</field>
		<field name="entry_id">269</field>
		<field name="story_id">313</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">314</field>
		<field name="entry_id">269</field>
		<field name="story_id">314</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">315</field>
		<field name="entry_id">270</field>
		<field name="story_id">315</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">316</field>
		<field name="entry_id">173</field>
		<field name="story_id">316</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">317</field>
		<field name="entry_id">280</field>
		<field name="story_id">317</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">318</field>
		<field name="entry_id">280</field>
		<field name="story_id">318</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">319</field>
		<field name="entry_id">295</field>
		<field name="story_id">319</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">320</field>
		<field name="entry_id">302</field>
		<field name="story_id">320</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">321</field>
		<field name="entry_id">310</field>
		<field name="story_id">321</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">322</field>
		<field name="entry_id">310</field>
		<field name="story_id">322</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">323</field>
		<field name="entry_id">312</field>
		<field name="story_id">323</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">324</field>
		<field name="entry_id">316</field>
		<field name="story_id">324</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">325</field>
		<field name="entry_id">317</field>
		<field name="story_id">325</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">326</field>
		<field name="entry_id">317</field>
		<field name="story_id">326</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">327</field>
		<field name="entry_id">317</field>
		<field name="story_id">327</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">328</field>
		<field name="entry_id">320</field>
		<field name="story_id">328</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">329</field>
		<field name="entry_id">326</field>
		<field name="story_id">329</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">330</field>
		<field name="entry_id">327</field>
		<field name="story_id">330</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">331</field>
		<field name="entry_id">327</field>
		<field name="story_id">331</field>
		<field name="user_id">2</field>
	</row>
	<row>
		<field name="id">332</field>
		<field name="entry_id">332</field>
		<field name="story_id">332</field>
		<field name="user_id">2</field>
	</row>
	</table_data>
	<table_structure name="entries_tags">
		<field Field="id" Type="int(11) unsigned" Null="NO" Key="PRI" Extra="auto_increment" />
		<field Field="entry_id" Type="int(11) unsigned" Null="NO" Key="MUL" Extra="" />
		<field Field="tag_id" Type="int(11) unsigned" Null="NO" Key="MUL" Extra="" />
		<key Table="entries_tags" Non_unique="0" Key_name="PRIMARY" Seq_in_index="1" Column_name="id" Collation="A" Cardinality="528" Null="" Index_type="BTREE" Comment="" />
		<key Table="entries_tags" Non_unique="1" Key_name="tag_id" Seq_in_index="1" Column_name="tag_id" Collation="A" Cardinality="264" Null="" Index_type="BTREE" Comment="" />
		<key Table="entries_tags" Non_unique="1" Key_name="entry_id" Seq_in_index="1" Column_name="entry_id" Collation="A" Cardinality="528" Null="" Index_type="BTREE" Comment="" />
		<options Name="entries_tags" Engine="InnoDB" Version="10" Row_format="Compact" Rows="528" Avg_row_length="62" Data_length="32768" Max_data_length="0" Index_length="32768" Data_free="10485760" Auto_increment="1050" Create_time="2012-03-27 02:57:56" Collation="utf8_general_ci" Create_options="" Comment="" />
	</table_structure>
	<table_data name="entries_tags">
	<row>
		<field name="id">18</field>
		<field name="entry_id">5</field>
		<field name="tag_id">9</field>
	</row>
	<row>
		<field name="id">19</field>
		<field name="entry_id">5</field>
		<field name="tag_id">10</field>
	</row>
	<row>
		<field name="id">36</field>
		<field name="entry_id">8</field>
		<field name="tag_id">16</field>
	</row>
	<row>
		<field name="id">37</field>
		<field name="entry_id">8</field>
		<field name="tag_id">11</field>
	</row>
	<row>
		<field name="id">38</field>
		<field name="entry_id">8</field>
		<field name="tag_id">17</field>
	</row>
	<row>
		<field name="id">39</field>
		<field name="entry_id">8</field>
		<field name="tag_id">18</field>
	</row>
	<row>
		<field name="id">41</field>
		<field name="entry_id">7</field>
		<field name="tag_id">14</field>
	</row>
	<row>
		<field name="id">42</field>
		<field name="entry_id">7</field>
		<field name="tag_id">15</field>
	</row>
	<row>
		<field name="id">43</field>
		<field name="entry_id">7</field>
		<field name="tag_id">19</field>
	</row>
	<row>
		<field name="id">45</field>
		<field name="entry_id">9</field>
		<field name="tag_id">19</field>
	</row>
	<row>
		<field name="id">50</field>
		<field name="entry_id">10</field>
		<field name="tag_id">20</field>
	</row>
	<row>
		<field name="id">51</field>
		<field name="entry_id">10</field>
		<field name="tag_id">21</field>
	</row>
	<row>
		<field name="id">66</field>
		<field name="entry_id">13</field>
		<field name="tag_id">26</field>
	</row>
	<row>
		<field name="id">67</field>
		<field name="entry_id">13</field>
		<field name="tag_id">27</field>
	</row>
	<row>
		<field name="id">70</field>
		<field name="entry_id">15</field>
		<field name="tag_id">30</field>
	</row>
	<row>
		<field name="id">71</field>
		<field name="entry_id">15</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">72</field>
		<field name="entry_id">16</field>
		<field name="tag_id">32</field>
	</row>
	<row>
		<field name="id">73</field>
		<field name="entry_id">17</field>
		<field name="tag_id">30</field>
	</row>
	<row>
		<field name="id">74</field>
		<field name="entry_id">17</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">75</field>
		<field name="entry_id">17</field>
		<field name="tag_id">33</field>
	</row>
	<row>
		<field name="id">76</field>
		<field name="entry_id">18</field>
		<field name="tag_id">30</field>
	</row>
	<row>
		<field name="id">77</field>
		<field name="entry_id">18</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">78</field>
		<field name="entry_id">18</field>
		<field name="tag_id">33</field>
	</row>
	<row>
		<field name="id">81</field>
		<field name="entry_id">19</field>
		<field name="tag_id">34</field>
	</row>
	<row>
		<field name="id">82</field>
		<field name="entry_id">19</field>
		<field name="tag_id">35</field>
	</row>
	<row>
		<field name="id">83</field>
		<field name="entry_id">20</field>
		<field name="tag_id">30</field>
	</row>
	<row>
		<field name="id">84</field>
		<field name="entry_id">20</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">85</field>
		<field name="entry_id">21</field>
		<field name="tag_id">30</field>
	</row>
	<row>
		<field name="id">86</field>
		<field name="entry_id">21</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">87</field>
		<field name="entry_id">22</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">88</field>
		<field name="entry_id">22</field>
		<field name="tag_id">36</field>
	</row>
	<row>
		<field name="id">95</field>
		<field name="entry_id">23</field>
		<field name="tag_id">37</field>
	</row>
	<row>
		<field name="id">96</field>
		<field name="entry_id">23</field>
		<field name="tag_id">38</field>
	</row>
	<row>
		<field name="id">117</field>
		<field name="entry_id">3</field>
		<field name="tag_id">7</field>
	</row>
	<row>
		<field name="id">118</field>
		<field name="entry_id">3</field>
		<field name="tag_id">8</field>
	</row>
	<row>
		<field name="id">121</field>
		<field name="entry_id">24</field>
		<field name="tag_id">5</field>
	</row>
	<row>
		<field name="id">122</field>
		<field name="entry_id">24</field>
		<field name="tag_id">38</field>
	</row>
	<row>
		<field name="id">131</field>
		<field name="entry_id">25</field>
		<field name="tag_id">39</field>
	</row>
	<row>
		<field name="id">132</field>
		<field name="entry_id">25</field>
		<field name="tag_id">19</field>
	</row>
	<row>
		<field name="id">133</field>
		<field name="entry_id">26</field>
		<field name="tag_id">40</field>
	</row>
	<row>
		<field name="id">149</field>
		<field name="entry_id">1</field>
		<field name="tag_id">1</field>
	</row>
	<row>
		<field name="id">150</field>
		<field name="entry_id">1</field>
		<field name="tag_id">2</field>
	</row>
	<row>
		<field name="id">151</field>
		<field name="entry_id">1</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">154</field>
		<field name="entry_id">28</field>
		<field name="tag_id">32</field>
	</row>
	<row>
		<field name="id">166</field>
		<field name="entry_id">31</field>
		<field name="tag_id">47</field>
	</row>
	<row>
		<field name="id">167</field>
		<field name="entry_id">31</field>
		<field name="tag_id">25</field>
	</row>
	<row>
		<field name="id">168</field>
		<field name="entry_id">31</field>
		<field name="tag_id">48</field>
	</row>
	<row>
		<field name="id">169</field>
		<field name="entry_id">32</field>
		<field name="tag_id">49</field>
	</row>
	<row>
		<field name="id">170</field>
		<field name="entry_id">32</field>
		<field name="tag_id">50</field>
	</row>
	<row>
		<field name="id">174</field>
		<field name="entry_id">33</field>
		<field name="tag_id">51</field>
	</row>
	<row>
		<field name="id">175</field>
		<field name="entry_id">33</field>
		<field name="tag_id">22</field>
	</row>
	<row>
		<field name="id">176</field>
		<field name="entry_id">33</field>
		<field name="tag_id">52</field>
	</row>
	<row>
		<field name="id">183</field>
		<field name="entry_id">11</field>
		<field name="tag_id">10</field>
	</row>
	<row>
		<field name="id">184</field>
		<field name="entry_id">11</field>
		<field name="tag_id">9</field>
	</row>
	<row>
		<field name="id">199</field>
		<field name="entry_id">35</field>
		<field name="tag_id">11</field>
	</row>
	<row>
		<field name="id">200</field>
		<field name="entry_id">35</field>
		<field name="tag_id">9</field>
	</row>
	<row>
		<field name="id">201</field>
		<field name="entry_id">35</field>
		<field name="tag_id">53</field>
	</row>
	<row>
		<field name="id">202</field>
		<field name="entry_id">12</field>
		<field name="tag_id">22</field>
	</row>
	<row>
		<field name="id">203</field>
		<field name="entry_id">12</field>
		<field name="tag_id">23</field>
	</row>
	<row>
		<field name="id">204</field>
		<field name="entry_id">12</field>
		<field name="tag_id">24</field>
	</row>
	<row>
		<field name="id">205</field>
		<field name="entry_id">12</field>
		<field name="tag_id">25</field>
	</row>
	<row>
		<field name="id">208</field>
		<field name="entry_id">37</field>
		<field name="tag_id">32</field>
	</row>
	<row>
		<field name="id">209</field>
		<field name="entry_id">36</field>
		<field name="tag_id">54</field>
	</row>
	<row>
		<field name="id">210</field>
		<field name="entry_id">36</field>
		<field name="tag_id">55</field>
	</row>
	<row>
		<field name="id">211</field>
		<field name="entry_id">34</field>
		<field name="tag_id">47</field>
	</row>
	<row>
		<field name="id">212</field>
		<field name="entry_id">34</field>
		<field name="tag_id">24</field>
	</row>
	<row>
		<field name="id">213</field>
		<field name="entry_id">4</field>
		<field name="tag_id">7</field>
	</row>
	<row>
		<field name="id">214</field>
		<field name="entry_id">4</field>
		<field name="tag_id">8</field>
	</row>
	<row>
		<field name="id">215</field>
		<field name="entry_id">38</field>
		<field name="tag_id">52</field>
	</row>
	<row>
		<field name="id">216</field>
		<field name="entry_id">39</field>
		<field name="tag_id">6</field>
	</row>
	<row>
		<field name="id">220</field>
		<field name="entry_id">40</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">221</field>
		<field name="entry_id">40</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">222</field>
		<field name="entry_id">40</field>
		<field name="tag_id">57</field>
	</row>
	<row>
		<field name="id">223</field>
		<field name="entry_id">41</field>
		<field name="tag_id">57</field>
	</row>
	<row>
		<field name="id">224</field>
		<field name="entry_id">41</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">225</field>
		<field name="entry_id">42</field>
		<field name="tag_id">57</field>
	</row>
	<row>
		<field name="id">226</field>
		<field name="entry_id">42</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">227</field>
		<field name="entry_id">42</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">229</field>
		<field name="entry_id">44</field>
		<field name="tag_id">60</field>
	</row>
	<row>
		<field name="id">230</field>
		<field name="entry_id">44</field>
		<field name="tag_id">61</field>
	</row>
	<row>
		<field name="id">231</field>
		<field name="entry_id">43</field>
		<field name="tag_id">59</field>
	</row>
	<row>
		<field name="id">233</field>
		<field name="entry_id">45</field>
		<field name="tag_id">59</field>
	</row>
	<row>
		<field name="id">244</field>
		<field name="entry_id">47</field>
		<field name="tag_id">59</field>
	</row>
	<row>
		<field name="id">245</field>
		<field name="entry_id">47</field>
		<field name="tag_id">63</field>
	</row>
	<row>
		<field name="id">247</field>
		<field name="entry_id">49</field>
		<field name="tag_id">62</field>
	</row>
	<row>
		<field name="id">248</field>
		<field name="entry_id">50</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">249</field>
		<field name="entry_id">51</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">250</field>
		<field name="entry_id">51</field>
		<field name="tag_id">34</field>
	</row>
	<row>
		<field name="id">251</field>
		<field name="entry_id">48</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">253</field>
		<field name="entry_id">52</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">254</field>
		<field name="entry_id">53</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">255</field>
		<field name="entry_id">53</field>
		<field name="tag_id">62</field>
	</row>
	<row>
		<field name="id">258</field>
		<field name="entry_id">54</field>
		<field name="tag_id">64</field>
	</row>
	<row>
		<field name="id">259</field>
		<field name="entry_id">54</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">261</field>
		<field name="entry_id">55</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">263</field>
		<field name="entry_id">56</field>
		<field name="tag_id">32</field>
	</row>
	<row>
		<field name="id">264</field>
		<field name="entry_id">56</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">265</field>
		<field name="entry_id">57</field>
		<field name="tag_id">65</field>
	</row>
	<row>
		<field name="id">268</field>
		<field name="entry_id">59</field>
		<field name="tag_id">66</field>
	</row>
	<row>
		<field name="id">269</field>
		<field name="entry_id">59</field>
		<field name="tag_id">62</field>
	</row>
	<row>
		<field name="id">270</field>
		<field name="entry_id">60</field>
		<field name="tag_id">67</field>
	</row>
	<row>
		<field name="id">271</field>
		<field name="entry_id">61</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">272</field>
		<field name="entry_id">62</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">273</field>
		<field name="entry_id">62</field>
		<field name="tag_id">68</field>
	</row>
	<row>
		<field name="id">274</field>
		<field name="entry_id">58</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">275</field>
		<field name="entry_id">58</field>
		<field name="tag_id">68</field>
	</row>
	<row>
		<field name="id">278</field>
		<field name="entry_id">63</field>
		<field name="tag_id">62</field>
	</row>
	<row>
		<field name="id">281</field>
		<field name="entry_id">66</field>
		<field name="tag_id">68</field>
	</row>
	<row>
		<field name="id">282</field>
		<field name="entry_id">67</field>
		<field name="tag_id">68</field>
	</row>
	<row>
		<field name="id">283</field>
		<field name="entry_id">68</field>
		<field name="tag_id">68</field>
	</row>
	<row>
		<field name="id">285</field>
		<field name="entry_id">65</field>
		<field name="tag_id">68</field>
	</row>
	<row>
		<field name="id">288</field>
		<field name="entry_id">70</field>
		<field name="tag_id">62</field>
	</row>
	<row>
		<field name="id">289</field>
		<field name="entry_id">71</field>
		<field name="tag_id">60</field>
	</row>
	<row>
		<field name="id">290</field>
		<field name="entry_id">69</field>
		<field name="tag_id">19</field>
	</row>
	<row>
		<field name="id">291</field>
		<field name="entry_id">69</field>
		<field name="tag_id">70</field>
	</row>
	<row>
		<field name="id">293</field>
		<field name="entry_id">72</field>
		<field name="tag_id">71</field>
	</row>
	<row>
		<field name="id">294</field>
		<field name="entry_id">73</field>
		<field name="tag_id">71</field>
	</row>
	<row>
		<field name="id">295</field>
		<field name="entry_id">74</field>
		<field name="tag_id">71</field>
	</row>
	<row>
		<field name="id">296</field>
		<field name="entry_id">75</field>
		<field name="tag_id">71</field>
	</row>
	<row>
		<field name="id">297</field>
		<field name="entry_id">76</field>
		<field name="tag_id">71</field>
	</row>
	<row>
		<field name="id">300</field>
		<field name="entry_id">79</field>
		<field name="tag_id">72</field>
	</row>
	<row>
		<field name="id">301</field>
		<field name="entry_id">80</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">302</field>
		<field name="entry_id">77</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">305</field>
		<field name="entry_id">82</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">307</field>
		<field name="entry_id">83</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">308</field>
		<field name="entry_id">84</field>
		<field name="tag_id">60</field>
	</row>
	<row>
		<field name="id">309</field>
		<field name="entry_id">85</field>
		<field name="tag_id">74</field>
	</row>
	<row>
		<field name="id">310</field>
		<field name="entry_id">86</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">311</field>
		<field name="entry_id">87</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">313</field>
		<field name="entry_id">89</field>
		<field name="tag_id">75</field>
	</row>
	<row>
		<field name="id">314</field>
		<field name="entry_id">89</field>
		<field name="tag_id">76</field>
	</row>
	<row>
		<field name="id">316</field>
		<field name="entry_id">91</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">317</field>
		<field name="entry_id">92</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">318</field>
		<field name="entry_id">92</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">319</field>
		<field name="entry_id">90</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">321</field>
		<field name="entry_id">94</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">322</field>
		<field name="entry_id">93</field>
		<field name="tag_id">62</field>
	</row>
	<row>
		<field name="id">325</field>
		<field name="entry_id">96</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">326</field>
		<field name="entry_id">97</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">327</field>
		<field name="entry_id">95</field>
		<field name="tag_id">78</field>
	</row>
	<row>
		<field name="id">328</field>
		<field name="entry_id">95</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">330</field>
		<field name="entry_id">99</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">331</field>
		<field name="entry_id">100</field>
		<field name="tag_id">79</field>
	</row>
	<row>
		<field name="id">332</field>
		<field name="entry_id">101</field>
		<field name="tag_id">60</field>
	</row>
	<row>
		<field name="id">333</field>
		<field name="entry_id">102</field>
		<field name="tag_id">34</field>
	</row>
	<row>
		<field name="id">334</field>
		<field name="entry_id">103</field>
		<field name="tag_id">34</field>
	</row>
	<row>
		<field name="id">335</field>
		<field name="entry_id">98</field>
		<field name="tag_id">68</field>
	</row>
	<row>
		<field name="id">337</field>
		<field name="entry_id">104</field>
		<field name="tag_id">70</field>
	</row>
	<row>
		<field name="id">340</field>
		<field name="entry_id">107</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">341</field>
		<field name="entry_id">107</field>
		<field name="tag_id">80</field>
	</row>
	<row>
		<field name="id">342</field>
		<field name="entry_id">108</field>
		<field name="tag_id">81</field>
	</row>
	<row>
		<field name="id">343</field>
		<field name="entry_id">109</field>
		<field name="tag_id">60</field>
	</row>
	<row>
		<field name="id">344</field>
		<field name="entry_id">110</field>
		<field name="tag_id">80</field>
	</row>
	<row>
		<field name="id">345</field>
		<field name="entry_id">111</field>
		<field name="tag_id">80</field>
	</row>
	<row>
		<field name="id">346</field>
		<field name="entry_id">112</field>
		<field name="tag_id">82</field>
	</row>
	<row>
		<field name="id">351</field>
		<field name="entry_id">113</field>
		<field name="tag_id">83</field>
	</row>
	<row>
		<field name="id">352</field>
		<field name="entry_id">113</field>
		<field name="tag_id">84</field>
	</row>
	<row>
		<field name="id">353</field>
		<field name="entry_id">78</field>
		<field name="tag_id">65</field>
	</row>
	<row>
		<field name="id">355</field>
		<field name="entry_id">115</field>
		<field name="tag_id">68</field>
	</row>
	<row>
		<field name="id">356</field>
		<field name="entry_id">115</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">357</field>
		<field name="entry_id">116</field>
		<field name="tag_id">68</field>
	</row>
	<row>
		<field name="id">358</field>
		<field name="entry_id">116</field>
		<field name="tag_id">85</field>
	</row>
	<row>
		<field name="id">359</field>
		<field name="entry_id">117</field>
		<field name="tag_id">60</field>
	</row>
	<row>
		<field name="id">360</field>
		<field name="entry_id">118</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">362</field>
		<field name="entry_id">114</field>
		<field name="tag_id">68</field>
	</row>
	<row>
		<field name="id">364</field>
		<field name="entry_id">120</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">365</field>
		<field name="entry_id">120</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">366</field>
		<field name="entry_id">121</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">367</field>
		<field name="entry_id">121</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">369</field>
		<field name="entry_id">119</field>
		<field name="tag_id">86</field>
	</row>
	<row>
		<field name="id">375</field>
		<field name="entry_id">122</field>
		<field name="tag_id">64</field>
	</row>
	<row>
		<field name="id">377</field>
		<field name="entry_id">125</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">378</field>
		<field name="entry_id">126</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">379</field>
		<field name="entry_id">126</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">381</field>
		<field name="entry_id">128</field>
		<field name="tag_id">71</field>
	</row>
	<row>
		<field name="id">382</field>
		<field name="entry_id">128</field>
		<field name="tag_id">72</field>
	</row>
	<row>
		<field name="id">386</field>
		<field name="entry_id">130</field>
		<field name="tag_id">71</field>
	</row>
	<row>
		<field name="id">387</field>
		<field name="entry_id">130</field>
		<field name="tag_id">89</field>
	</row>
	<row>
		<field name="id">388</field>
		<field name="entry_id">131</field>
		<field name="tag_id">89</field>
	</row>
	<row>
		<field name="id">389</field>
		<field name="entry_id">132</field>
		<field name="tag_id">90</field>
	</row>
	<row>
		<field name="id">390</field>
		<field name="entry_id">133</field>
		<field name="tag_id">90</field>
	</row>
	<row>
		<field name="id">392</field>
		<field name="entry_id">127</field>
		<field name="tag_id">88</field>
	</row>
	<row>
		<field name="id">393</field>
		<field name="entry_id">134</field>
		<field name="tag_id">60</field>
	</row>
	<row>
		<field name="id">396</field>
		<field name="entry_id">136</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">397</field>
		<field name="entry_id">135</field>
		<field name="tag_id">78</field>
	</row>
	<row>
		<field name="id">400</field>
		<field name="entry_id">137</field>
		<field name="tag_id">91</field>
	</row>
	<row>
		<field name="id">401</field>
		<field name="entry_id">138</field>
		<field name="tag_id">92</field>
	</row>
	<row>
		<field name="id">403</field>
		<field name="entry_id">140</field>
		<field name="tag_id">93</field>
	</row>
	<row>
		<field name="id">406</field>
		<field name="entry_id">141</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">407</field>
		<field name="entry_id">142</field>
		<field name="tag_id">5</field>
	</row>
	<row>
		<field name="id">408</field>
		<field name="entry_id">143</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">409</field>
		<field name="entry_id">143</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">410</field>
		<field name="entry_id">139</field>
		<field name="tag_id">93</field>
	</row>
	<row>
		<field name="id">413</field>
		<field name="entry_id">145</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">414</field>
		<field name="entry_id">145</field>
		<field name="tag_id">78</field>
	</row>
	<row>
		<field name="id">415</field>
		<field name="entry_id">146</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">417</field>
		<field name="entry_id">144</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">419</field>
		<field name="entry_id">147</field>
		<field name="tag_id">94</field>
	</row>
	<row>
		<field name="id">422</field>
		<field name="entry_id">148</field>
		<field name="tag_id">82</field>
	</row>
	<row>
		<field name="id">423</field>
		<field name="entry_id">149</field>
		<field name="tag_id">92</field>
	</row>
	<row>
		<field name="id">424</field>
		<field name="entry_id">149</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">426</field>
		<field name="entry_id">150</field>
		<field name="tag_id">91</field>
	</row>
	<row>
		<field name="id">427</field>
		<field name="entry_id">151</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">428</field>
		<field name="entry_id">151</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">429</field>
		<field name="entry_id">152</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">431</field>
		<field name="entry_id">153</field>
		<field name="tag_id">78</field>
	</row>
	<row>
		<field name="id">440</field>
		<field name="entry_id">154</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">441</field>
		<field name="entry_id">154</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">443</field>
		<field name="entry_id">155</field>
		<field name="tag_id">78</field>
	</row>
	<row>
		<field name="id">444</field>
		<field name="entry_id">156</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">445</field>
		<field name="entry_id">157</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">446</field>
		<field name="entry_id">157</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">447</field>
		<field name="entry_id">158</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">448</field>
		<field name="entry_id">158</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">455</field>
		<field name="entry_id">159</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">456</field>
		<field name="entry_id">159</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">458</field>
		<field name="entry_id">160</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">459</field>
		<field name="entry_id">161</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">460</field>
		<field name="entry_id">161</field>
		<field name="tag_id">89</field>
	</row>
	<row>
		<field name="id">461</field>
		<field name="entry_id">162</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">462</field>
		<field name="entry_id">162</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">463</field>
		<field name="entry_id">163</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">464</field>
		<field name="entry_id">164</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">465</field>
		<field name="entry_id">165</field>
		<field name="tag_id">95</field>
	</row>
	<row>
		<field name="id">466</field>
		<field name="entry_id">165</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">469</field>
		<field name="entry_id">166</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">472</field>
		<field name="entry_id">167</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">474</field>
		<field name="entry_id">168</field>
		<field name="tag_id">5</field>
	</row>
	<row>
		<field name="id">476</field>
		<field name="entry_id">169</field>
		<field name="tag_id">96</field>
	</row>
	<row>
		<field name="id">477</field>
		<field name="entry_id">170</field>
		<field name="tag_id">61</field>
	</row>
	<row>
		<field name="id">479</field>
		<field name="entry_id">171</field>
		<field name="tag_id">96</field>
	</row>
	<row>
		<field name="id">480</field>
		<field name="entry_id">172</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">481</field>
		<field name="entry_id">172</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">484</field>
		<field name="entry_id">174</field>
		<field name="tag_id">95</field>
	</row>
	<row>
		<field name="id">485</field>
		<field name="entry_id">174</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">487</field>
		<field name="entry_id">176</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">488</field>
		<field name="entry_id">175</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">490</field>
		<field name="entry_id">177</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">491</field>
		<field name="entry_id">2</field>
		<field name="tag_id">4</field>
	</row>
	<row>
		<field name="id">492</field>
		<field name="entry_id">2</field>
		<field name="tag_id">5</field>
	</row>
	<row>
		<field name="id">493</field>
		<field name="entry_id">2</field>
		<field name="tag_id">6</field>
	</row>
	<row>
		<field name="id">494</field>
		<field name="entry_id">178</field>
		<field name="tag_id">92</field>
	</row>
	<row>
		<field name="id">495</field>
		<field name="entry_id">178</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">496</field>
		<field name="entry_id">178</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">497</field>
		<field name="entry_id">179</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">498</field>
		<field name="entry_id">180</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">499</field>
		<field name="entry_id">180</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">500</field>
		<field name="entry_id">181</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">501</field>
		<field name="entry_id">181</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">504</field>
		<field name="entry_id">183</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">505</field>
		<field name="entry_id">183</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">508</field>
		<field name="entry_id">182</field>
		<field name="tag_id">96</field>
	</row>
	<row>
		<field name="id">509</field>
		<field name="entry_id">182</field>
		<field name="tag_id">62</field>
	</row>
	<row>
		<field name="id">516</field>
		<field name="entry_id">184</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">517</field>
		<field name="entry_id">184</field>
		<field name="tag_id">62</field>
	</row>
	<row>
		<field name="id">518</field>
		<field name="entry_id">184</field>
		<field name="tag_id">96</field>
	</row>
	<row>
		<field name="id">520</field>
		<field name="entry_id">88</field>
		<field name="tag_id">72</field>
	</row>
	<row>
		<field name="id">525</field>
		<field name="entry_id">186</field>
		<field name="tag_id">70</field>
	</row>
	<row>
		<field name="id">526</field>
		<field name="entry_id">187</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">532</field>
		<field name="entry_id">185</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">533</field>
		<field name="entry_id">185</field>
		<field name="tag_id">70</field>
	</row>
	<row>
		<field name="id">538</field>
		<field name="entry_id">189</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">539</field>
		<field name="entry_id">190</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">540</field>
		<field name="entry_id">191</field>
		<field name="tag_id">5</field>
	</row>
	<row>
		<field name="id">541</field>
		<field name="entry_id">192</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">542</field>
		<field name="entry_id">193</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">543</field>
		<field name="entry_id">193</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">544</field>
		<field name="entry_id">194</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">545</field>
		<field name="entry_id">194</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">546</field>
		<field name="entry_id">195</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">547</field>
		<field name="entry_id">195</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">548</field>
		<field name="entry_id">30</field>
		<field name="tag_id">45</field>
	</row>
	<row>
		<field name="id">549</field>
		<field name="entry_id">30</field>
		<field name="tag_id">46</field>
	</row>
	<row>
		<field name="id">550</field>
		<field name="entry_id">29</field>
		<field name="tag_id">42</field>
	</row>
	<row>
		<field name="id">551</field>
		<field name="entry_id">29</field>
		<field name="tag_id">43</field>
	</row>
	<row>
		<field name="id">552</field>
		<field name="entry_id">29</field>
		<field name="tag_id">44</field>
	</row>
	<row>
		<field name="id">556</field>
		<field name="entry_id">196</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">557</field>
		<field name="entry_id">196</field>
		<field name="tag_id">40</field>
	</row>
	<row>
		<field name="id">558</field>
		<field name="entry_id">197</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">559</field>
		<field name="entry_id">197</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">560</field>
		<field name="entry_id">198</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">561</field>
		<field name="entry_id">199</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">562</field>
		<field name="entry_id">6</field>
		<field name="tag_id">11</field>
	</row>
	<row>
		<field name="id">563</field>
		<field name="entry_id">6</field>
		<field name="tag_id">12</field>
	</row>
	<row>
		<field name="id">564</field>
		<field name="entry_id">6</field>
		<field name="tag_id">13</field>
	</row>
	<row>
		<field name="id">565</field>
		<field name="entry_id">200</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">567</field>
		<field name="entry_id">201</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">568</field>
		<field name="entry_id">81</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">573</field>
		<field name="entry_id">202</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">576</field>
		<field name="entry_id">204</field>
		<field name="tag_id">70</field>
	</row>
	<row>
		<field name="id">577</field>
		<field name="entry_id">204</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">579</field>
		<field name="entry_id">206</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">580</field>
		<field name="entry_id">206</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">583</field>
		<field name="entry_id">208</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">584</field>
		<field name="entry_id">208</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">585</field>
		<field name="entry_id">209</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">586</field>
		<field name="entry_id">209</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">588</field>
		<field name="entry_id">207</field>
		<field name="tag_id">70</field>
	</row>
	<row>
		<field name="id">589</field>
		<field name="entry_id">210</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">590</field>
		<field name="entry_id">211</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">591</field>
		<field name="entry_id">212</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">596</field>
		<field name="entry_id">214</field>
		<field name="tag_id">61</field>
	</row>
	<row>
		<field name="id">597</field>
		<field name="entry_id">215</field>
		<field name="tag_id">70</field>
	</row>
	<row>
		<field name="id">598</field>
		<field name="entry_id">216</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">599</field>
		<field name="entry_id">217</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">600</field>
		<field name="entry_id">218</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">601</field>
		<field name="entry_id">219</field>
		<field name="tag_id">30</field>
	</row>
	<row>
		<field name="id">602</field>
		<field name="entry_id">213</field>
		<field name="tag_id">97</field>
	</row>
	<row>
		<field name="id">603</field>
		<field name="entry_id">213</field>
		<field name="tag_id">70</field>
	</row>
	<row>
		<field name="id">616</field>
		<field name="entry_id">221</field>
		<field name="tag_id">92</field>
	</row>
	<row>
		<field name="id">617</field>
		<field name="entry_id">221</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">618</field>
		<field name="entry_id">220</field>
		<field name="tag_id">30</field>
	</row>
	<row>
		<field name="id">619</field>
		<field name="entry_id">220</field>
		<field name="tag_id">5</field>
	</row>
	<row>
		<field name="id">620</field>
		<field name="entry_id">220</field>
		<field name="tag_id">70</field>
	</row>
	<row>
		<field name="id">622</field>
		<field name="entry_id">188</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">623</field>
		<field name="entry_id">222</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">624</field>
		<field name="entry_id">222</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">625</field>
		<field name="entry_id">223</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">626</field>
		<field name="entry_id">223</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">628</field>
		<field name="entry_id">224</field>
		<field name="tag_id">59</field>
	</row>
	<row>
		<field name="id">631</field>
		<field name="entry_id">64</field>
		<field name="tag_id">69</field>
	</row>
	<row>
		<field name="id">634</field>
		<field name="entry_id">225</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">635</field>
		<field name="entry_id">225</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">636</field>
		<field name="entry_id">226</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">637</field>
		<field name="entry_id">226</field>
		<field name="tag_id">92</field>
	</row>
	<row>
		<field name="id">638</field>
		<field name="entry_id">227</field>
		<field name="tag_id">70</field>
	</row>
	<row>
		<field name="id">639</field>
		<field name="entry_id">227</field>
		<field name="tag_id">64</field>
	</row>
	<row>
		<field name="id">642</field>
		<field name="entry_id">228</field>
		<field name="tag_id">92</field>
	</row>
	<row>
		<field name="id">643</field>
		<field name="entry_id">123</field>
		<field name="tag_id">64</field>
	</row>
	<row>
		<field name="id">654</field>
		<field name="entry_id">229</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">655</field>
		<field name="entry_id">229</field>
		<field name="tag_id">70</field>
	</row>
	<row>
		<field name="id">656</field>
		<field name="entry_id">230</field>
		<field name="tag_id">70</field>
	</row>
	<row>
		<field name="id">657</field>
		<field name="entry_id">231</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">658</field>
		<field name="entry_id">231</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">659</field>
		<field name="entry_id">232</field>
		<field name="tag_id">89</field>
	</row>
	<row>
		<field name="id">660</field>
		<field name="entry_id">232</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">661</field>
		<field name="entry_id">233</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">663</field>
		<field name="entry_id">235</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">668</field>
		<field name="entry_id">234</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">670</field>
		<field name="entry_id">236</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">671</field>
		<field name="entry_id">124</field>
		<field name="tag_id">87</field>
	</row>
	<row>
		<field name="id">672</field>
		<field name="entry_id">124</field>
		<field name="tag_id">64</field>
	</row>
	<row>
		<field name="id">675</field>
		<field name="entry_id">238</field>
		<field name="tag_id">96</field>
	</row>
	<row>
		<field name="id">676</field>
		<field name="entry_id">238</field>
		<field name="tag_id">62</field>
	</row>
	<row>
		<field name="id">686</field>
		<field name="entry_id">239</field>
		<field name="tag_id">62</field>
	</row>
	<row>
		<field name="id">687</field>
		<field name="entry_id">239</field>
		<field name="tag_id">96</field>
	</row>
	<row>
		<field name="id">694</field>
		<field name="entry_id">240</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">695</field>
		<field name="entry_id">240</field>
		<field name="tag_id">99</field>
	</row>
	<row>
		<field name="id">696</field>
		<field name="entry_id">240</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">697</field>
		<field name="entry_id">241</field>
		<field name="tag_id">80</field>
	</row>
	<row>
		<field name="id">702</field>
		<field name="entry_id">243</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">703</field>
		<field name="entry_id">243</field>
		<field name="tag_id">40</field>
	</row>
	<row>
		<field name="id">704</field>
		<field name="entry_id">244</field>
		<field name="tag_id">96</field>
	</row>
	<row>
		<field name="id">705</field>
		<field name="entry_id">244</field>
		<field name="tag_id">40</field>
	</row>
	<row>
		<field name="id">709</field>
		<field name="entry_id">242</field>
		<field name="tag_id">96</field>
	</row>
	<row>
		<field name="id">710</field>
		<field name="entry_id">242</field>
		<field name="tag_id">62</field>
	</row>
	<row>
		<field name="id">714</field>
		<field name="entry_id">247</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">715</field>
		<field name="entry_id">246</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">722</field>
		<field name="entry_id">248</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">723</field>
		<field name="entry_id">248</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">726</field>
		<field name="entry_id">249</field>
		<field name="tag_id">40</field>
	</row>
	<row>
		<field name="id">727</field>
		<field name="entry_id">249</field>
		<field name="tag_id">63</field>
	</row>
	<row>
		<field name="id">729</field>
		<field name="entry_id">250</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">730</field>
		<field name="entry_id">250</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">734</field>
		<field name="entry_id">205</field>
		<field name="tag_id">5</field>
	</row>
	<row>
		<field name="id">735</field>
		<field name="entry_id">251</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">739</field>
		<field name="entry_id">203</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">742</field>
		<field name="entry_id">252</field>
		<field name="tag_id">70</field>
	</row>
	<row>
		<field name="id">747</field>
		<field name="entry_id">253</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">749</field>
		<field name="entry_id">237</field>
		<field name="tag_id">98</field>
	</row>
	<row>
		<field name="id">757</field>
		<field name="entry_id">254</field>
		<field name="tag_id">40</field>
	</row>
	<row>
		<field name="id">758</field>
		<field name="entry_id">254</field>
		<field name="tag_id">100</field>
	</row>
	<row>
		<field name="id">759</field>
		<field name="entry_id">256</field>
		<field name="tag_id">62</field>
	</row>
	<row>
		<field name="id">765</field>
		<field name="entry_id">245</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">766</field>
		<field name="entry_id">245</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">767</field>
		<field name="entry_id">245</field>
		<field name="tag_id">96</field>
	</row>
	<row>
		<field name="id">770</field>
		<field name="entry_id">257</field>
		<field name="tag_id">101</field>
	</row>
	<row>
		<field name="id">771</field>
		<field name="entry_id">257</field>
		<field name="tag_id">86</field>
	</row>
	<row>
		<field name="id">774</field>
		<field name="entry_id">258</field>
		<field name="tag_id">29</field>
	</row>
	<row>
		<field name="id">775</field>
		<field name="entry_id">258</field>
		<field name="tag_id">28</field>
	</row>
	<row>
		<field name="id">778</field>
		<field name="entry_id">14</field>
		<field name="tag_id">28</field>
	</row>
	<row>
		<field name="id">779</field>
		<field name="entry_id">14</field>
		<field name="tag_id">29</field>
	</row>
	<row>
		<field name="id">784</field>
		<field name="entry_id">27</field>
		<field name="tag_id">41</field>
	</row>
	<row>
		<field name="id">785</field>
		<field name="entry_id">27</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">788</field>
		<field name="entry_id">260</field>
		<field name="tag_id">102</field>
	</row>
	<row>
		<field name="id">789</field>
		<field name="entry_id">261</field>
		<field name="tag_id">92</field>
	</row>
	<row>
		<field name="id">790</field>
		<field name="entry_id">262</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">791</field>
		<field name="entry_id">263</field>
		<field name="tag_id">73</field>
	</row>
	<row>
		<field name="id">794</field>
		<field name="entry_id">259</field>
		<field name="tag_id">70</field>
	</row>
	<row>
		<field name="id">795</field>
		<field name="entry_id">259</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">796</field>
		<field name="entry_id">264</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">801</field>
		<field name="entry_id">46</field>
		<field name="tag_id">62</field>
	</row>
	<row>
		<field name="id">802</field>
		<field name="entry_id">46</field>
		<field name="tag_id">59</field>
	</row>
	<row>
		<field name="id">807</field>
		<field name="entry_id">266</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">808</field>
		<field name="entry_id">265</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">809</field>
		<field name="entry_id">265</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">814</field>
		<field name="entry_id">267</field>
		<field name="tag_id">103</field>
	</row>
	<row>
		<field name="id">815</field>
		<field name="entry_id">267</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">824</field>
		<field name="entry_id">268</field>
		<field name="tag_id">103</field>
	</row>
	<row>
		<field name="id">825</field>
		<field name="entry_id">268</field>
		<field name="tag_id">70</field>
	</row>
	<row>
		<field name="id">836</field>
		<field name="entry_id">129</field>
		<field name="tag_id">71</field>
	</row>
	<row>
		<field name="id">837</field>
		<field name="entry_id">129</field>
		<field name="tag_id">89</field>
	</row>
	<row>
		<field name="id">838</field>
		<field name="entry_id">129</field>
		<field name="tag_id">81</field>
	</row>
	<row>
		<field name="id">842</field>
		<field name="entry_id">106</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">843</field>
		<field name="entry_id">269</field>
		<field name="tag_id">104</field>
	</row>
	<row>
		<field name="id">844</field>
		<field name="entry_id">269</field>
		<field name="tag_id">59</field>
	</row>
	<row>
		<field name="id">846</field>
		<field name="entry_id">271</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">847</field>
		<field name="entry_id">271</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">848</field>
		<field name="entry_id">272</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">849</field>
		<field name="entry_id">272</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">850</field>
		<field name="entry_id">270</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">855</field>
		<field name="entry_id">173</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">856</field>
		<field name="entry_id">173</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">862</field>
		<field name="entry_id">274</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">863</field>
		<field name="entry_id">275</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">866</field>
		<field name="entry_id">276</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">867</field>
		<field name="entry_id">276</field>
		<field name="tag_id">105</field>
	</row>
	<row>
		<field name="id">870</field>
		<field name="entry_id">277</field>
		<field name="tag_id">105</field>
	</row>
	<row>
		<field name="id">871</field>
		<field name="entry_id">277</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">872</field>
		<field name="entry_id">273</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">873</field>
		<field name="entry_id">273</field>
		<field name="tag_id">105</field>
	</row>
	<row>
		<field name="id">874</field>
		<field name="entry_id">278</field>
		<field name="tag_id">105</field>
	</row>
	<row>
		<field name="id">875</field>
		<field name="entry_id">278</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">876</field>
		<field name="entry_id">279</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">878</field>
		<field name="entry_id">280</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">879</field>
		<field name="entry_id">281</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">882</field>
		<field name="entry_id">282</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">883</field>
		<field name="entry_id">282</field>
		<field name="tag_id">105</field>
	</row>
	<row>
		<field name="id">885</field>
		<field name="entry_id">283</field>
		<field name="tag_id">32</field>
	</row>
	<row>
		<field name="id">886</field>
		<field name="entry_id">284</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">888</field>
		<field name="entry_id">285</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">889</field>
		<field name="entry_id">286</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">890</field>
		<field name="entry_id">286</field>
		<field name="tag_id">106</field>
	</row>
	<row>
		<field name="id">893</field>
		<field name="entry_id">287</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">894</field>
		<field name="entry_id">287</field>
		<field name="tag_id">105</field>
	</row>
	<row>
		<field name="id">895</field>
		<field name="entry_id">288</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">898</field>
		<field name="entry_id">289</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">899</field>
		<field name="entry_id">289</field>
		<field name="tag_id">105</field>
	</row>
	<row>
		<field name="id">900</field>
		<field name="entry_id">290</field>
		<field name="tag_id">105</field>
	</row>
	<row>
		<field name="id">901</field>
		<field name="entry_id">290</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">902</field>
		<field name="entry_id">291</field>
		<field name="tag_id">105</field>
	</row>
	<row>
		<field name="id">903</field>
		<field name="entry_id">291</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">906</field>
		<field name="entry_id">292</field>
		<field name="tag_id">105</field>
	</row>
	<row>
		<field name="id">907</field>
		<field name="entry_id">292</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">910</field>
		<field name="entry_id">294</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">911</field>
		<field name="entry_id">294</field>
		<field name="tag_id">107</field>
	</row>
	<row>
		<field name="id">912</field>
		<field name="entry_id">293</field>
		<field name="tag_id">105</field>
	</row>
	<row>
		<field name="id">913</field>
		<field name="entry_id">293</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">916</field>
		<field name="entry_id">296</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">917</field>
		<field name="entry_id">297</field>
		<field name="tag_id">105</field>
	</row>
	<row>
		<field name="id">918</field>
		<field name="entry_id">297</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">919</field>
		<field name="entry_id">298</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">922</field>
		<field name="entry_id">299</field>
		<field name="tag_id">105</field>
	</row>
	<row>
		<field name="id">923</field>
		<field name="entry_id">299</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">924</field>
		<field name="entry_id">300</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">925</field>
		<field name="entry_id">300</field>
		<field name="tag_id">105</field>
	</row>
	<row>
		<field name="id">927</field>
		<field name="entry_id">295</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">928</field>
		<field name="entry_id">295</field>
		<field name="tag_id">59</field>
	</row>
	<row>
		<field name="id">934</field>
		<field name="entry_id">301</field>
		<field name="tag_id">105</field>
	</row>
	<row>
		<field name="id">935</field>
		<field name="entry_id">301</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">939</field>
		<field name="entry_id">302</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">940</field>
		<field name="entry_id">302</field>
		<field name="tag_id">105</field>
	</row>
	<row>
		<field name="id">941</field>
		<field name="entry_id">302</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">944</field>
		<field name="entry_id">303</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">945</field>
		<field name="entry_id">303</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">947</field>
		<field name="entry_id">304</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">950</field>
		<field name="entry_id">305</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">953</field>
		<field name="entry_id">307</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">954</field>
		<field name="entry_id">307</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">955</field>
		<field name="entry_id">306</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">956</field>
		<field name="entry_id">306</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">961</field>
		<field name="entry_id">308</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">962</field>
		<field name="entry_id">308</field>
		<field name="tag_id">70</field>
	</row>
	<row>
		<field name="id">967</field>
		<field name="entry_id">311</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">968</field>
		<field name="entry_id">311</field>
		<field name="tag_id">96</field>
	</row>
	<row>
		<field name="id">969</field>
		<field name="entry_id">311</field>
		<field name="tag_id">62</field>
	</row>
	<row>
		<field name="id">970</field>
		<field name="entry_id">310</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">971</field>
		<field name="entry_id">310</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">975</field>
		<field name="entry_id">312</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">976</field>
		<field name="entry_id">313</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">977</field>
		<field name="entry_id">313</field>
		<field name="tag_id">96</field>
	</row>
	<row>
		<field name="id">978</field>
		<field name="entry_id">313</field>
		<field name="tag_id">40</field>
	</row>
	<row>
		<field name="id">979</field>
		<field name="entry_id">314</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">980</field>
		<field name="entry_id">314</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">981</field>
		<field name="entry_id">315</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">982</field>
		<field name="entry_id">315</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">985</field>
		<field name="entry_id">316</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">986</field>
		<field name="entry_id">316</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">989</field>
		<field name="entry_id">317</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">990</field>
		<field name="entry_id">317</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">993</field>
		<field name="entry_id">318</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">994</field>
		<field name="entry_id">318</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">995</field>
		<field name="entry_id">319</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">996</field>
		<field name="entry_id">319</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">1000</field>
		<field name="entry_id">321</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">1001</field>
		<field name="entry_id">320</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">1002</field>
		<field name="entry_id">320</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">1003</field>
		<field name="entry_id">320</field>
		<field name="tag_id">96</field>
	</row>
	<row>
		<field name="id">1006</field>
		<field name="entry_id">322</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">1007</field>
		<field name="entry_id">322</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">1008</field>
		<field name="entry_id">323</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">1009</field>
		<field name="entry_id">323</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">1012</field>
		<field name="entry_id">309</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">1013</field>
		<field name="entry_id">309</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">1016</field>
		<field name="entry_id">324</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">1017</field>
		<field name="entry_id">324</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">1018</field>
		<field name="entry_id">325</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">1020</field>
		<field name="entry_id">255</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">1023</field>
		<field name="entry_id">326</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">1024</field>
		<field name="entry_id">326</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">1029</field>
		<field name="entry_id">327</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">1030</field>
		<field name="entry_id">327</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">1031</field>
		<field name="entry_id">328</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">1032</field>
		<field name="entry_id">328</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">1033</field>
		<field name="entry_id">329</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">1034</field>
		<field name="entry_id">329</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">1035</field>
		<field name="entry_id">330</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">1036</field>
		<field name="entry_id">330</field>
		<field name="tag_id">3</field>
	</row>
	<row>
		<field name="id">1037</field>
		<field name="entry_id">331</field>
		<field name="tag_id">108</field>
	</row>
	<row>
		<field name="id">1038</field>
		<field name="entry_id">331</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">1040</field>
		<field name="entry_id">332</field>
		<field name="tag_id">31</field>
	</row>
	<row>
		<field name="id">1041</field>
		<field name="entry_id">333</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">1042</field>
		<field name="entry_id">333</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">1045</field>
		<field name="entry_id">334</field>
		<field name="tag_id">58</field>
	</row>
	<row>
		<field name="id">1046</field>
		<field name="entry_id">334</field>
		<field name="tag_id">56</field>
	</row>
	<row>
		<field name="id">1047</field>
		<field name="entry_id">335</field>
		<field name="tag_id">70</field>
	</row>
	<row>
		<field name="id">1048</field>
		<field name="entry_id">105</field>
		<field name="tag_id">77</field>
	</row>
	<row>
		<field name="id">1049</field>
		<field name="entry_id">336</field>
		<field name="tag_id">109</field>
	</row>
	</table_data>
	<table_structure name="groups">
		<field Field="id" Type="int(11) unsigned" Null="NO" Key="PRI" Extra="auto_increment" />
		<field Field="name" Type="varchar(100)" Null="NO" Key="" Default="" Extra="" />
		<field Field="created" Type="datetime" Null="YES" Key="" Extra="" />
		<field Field="modified" Type="datetime" Null="YES" Key="" Extra="" />
		<key Table="groups" Non_unique="0" Key_name="PRIMARY" Seq_in_index="1" Column_name="id" Collation="A" Cardinality="2" Null="" Index_type="BTREE" Comment="" />
		<options Name="groups" Engine="InnoDB" Version="10" Row_format="Compact" Rows="2" Avg_row_length="8192" Data_length="16384" Max_data_length="0" Index_length="0" Data_free="10485760" Auto_increment="3" Create_time="2012-03-27 02:57:56" Collation="utf8_general_ci" Create_options="" Comment="" />
	</table_structure>
	<table_data name="groups">
	<row>
		<field name="id">1</field>
		<field name="name">admins</field>
		<field name="created">2012-02-03 16:05:42</field>
		<field name="modified">2012-02-03 16:06:05</field>
	</row>
	<row>
		<field name="id">2</field>
		<field name="name">users</field>
		<field name="created">2012-02-03 16:06:11</field>
		<field name="modified">2012-02-03 16:06:11</field>
	</row>
	</table_data>
	<table_structure name="locations">
		<field Field="id" Type="int(11) unsigned" Null="NO" Key="PRI" Extra="auto_increment" />
		<field Field="city" Type="varchar(30)" Null="YES" Key="" Extra="" />
		<field Field="state" Type="varchar(20)" Null="YES" Key="" Extra="" />
		<field Field="country" Type="varchar(30)" Null="NO" Key="" Default="" Extra="" />
		<field Field="latitude" Type="float(10,6)" Null="YES" Key="" Extra="" />
		<field Field="longitude" Type="float(10,6)" Null="YES" Key="" Extra="" />
		<key Table="locations" Non_unique="0" Key_name="PRIMARY" Seq_in_index="1" Column_name="id" Collation="A" Cardinality="0" Null="" Index_type="BTREE" Comment="" />
		<options Name="locations" Engine="InnoDB" Version="10" Row_format="Compact" Rows="0" Avg_row_length="0" Data_length="16384" Max_data_length="0" Index_length="0" Data_free="10485760" Auto_increment="1" Create_time="2012-03-27 02:57:56" Collation="utf8_general_ci" Create_options="" Comment="" />
	</table_structure>
	<table_data name="locations">
	</table_data>
	<table_structure name="sources">
		<field Field="id" Type="int(11) unsigned" Null="NO" Key="PRI" Extra="auto_increment" />
		<field Field="name" Type="varchar(180)" Null="NO" Key="" Default="" Extra="" />
		<field Field="url" Type="varchar(300)" Null="NO" Key="" Default="" Extra="" />
		<field Field="entry_id" Type="int(11) unsigned" Null="NO" Key="MUL" Extra="" />
		<key Table="sources" Non_unique="0" Key_name="PRIMARY" Seq_in_index="1" Column_name="id" Collation="A" Cardinality="0" Null="" Index_type="BTREE" Comment="" />
		<key Table="sources" Non_unique="1" Key_name="entry_id" Seq_in_index="1" Column_name="entry_id" Collation="A" Cardinality="0" Null="" Index_type="BTREE" Comment="" />
		<options Name="sources" Engine="InnoDB" Version="10" Row_format="Compact" Rows="0" Avg_row_length="0" Data_length="16384" Max_data_length="0" Index_length="16384" Data_free="10485760" Auto_increment="1" Create_time="2012-03-27 02:57:56" Collation="utf8_general_ci" Create_options="" Comment="" />
	</table_structure>
	<table_data name="sources">
	</table_data>
	<table_structure name="stories">
		<field Field="id" Type="int(11) unsigned" Null="NO" Key="PRI" Extra="auto_increment" />
		<field Field="title" Type="varchar(100)" Null="NO" Key="" Default="" Extra="" />
		<field Field="story_type_id" Type="int(11) unsigned" Null="NO" Key="" Extra="" />
		<field Field="date" Type="datetime" Null="YES" Key="" Extra="" />
		<field Field="story" Type="varchar(4000)" Null="YES" Key="" Extra="" />
		<field Field="url" Type="varchar(250)" Null="YES" Key="" Extra="" />
		<field Field="video" Type="varchar(50)" Null="YES" Key="" Extra="" />
		<field Field="author_id" Type="int(11) unsigned" Null="YES" Key="" Extra="" />
		<field Field="published" Type="tinyint(1)" Null="NO" Key="" Default="0" Extra="" />
		<field Field="created" Type="datetime" Null="YES" Key="" Extra="" />
		<field Field="modified" Type="datetime" Null="YES" Key="" Extra="" />
		<field Field="source_name" Type="varchar(300)" Null="YES" Key="" Extra="" />
		<field Field="source_url" Type="varchar(300)" Null="YES" Key="" Extra="" />
		<key Table="stories" Non_unique="0" Key_name="PRIMARY" Seq_in_index="1" Column_name="id" Collation="A" Cardinality="339" Null="" Index_type="BTREE" Comment="" />
		<options Name="stories" Engine="InnoDB" Version="10" Row_format="Compact" Rows="317" Avg_row_length="620" Data_length="196608" Max_data_length="0" Index_length="0" Data_free="10485760" Auto_increment="333" Create_time="2012-03-27 02:57:56" Collation="utf8_general_ci" Create_options="" Comment="" />
	</table_structure>
	<table_data name="stories">
	<row>
		<field name="id">1</field>
		<field name="title">Favorite Thing</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://upload.wikimedia.org/wikipedia/commons/thumb/4/45/A_small_cup_of_coffee.JPG/275px-A_small_cup_of_coffee.JPG</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-26 23:02:18</field>
		<field name="modified">2012-04-10 15:21:51</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">2</field>
		<field name="title">My first job was programming binary load lifters .. (ILM 1991)</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://visualfx.com/photos_files/Media/R23PO/R23PO.jpg?disposition=download</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-27 14:40:03</field>
		<field name="modified">2012-03-27 14:51:23</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">3</field>
		<field name="title">After rolling some dice with Gary Gygax</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://visualfx.com/photos_files/Media/meandGary2_800/meandGary2_800.jpg?disposition=download</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-27 14:50:05</field>
		<field name="modified">2012-03-27 14:51:40</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">4</field>
		<field name="title">Toy Story</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://4.bp.blogspot.com/_O6xLvXpZlOU/S933Vft3qgI/AAAAAAAAIBg/rvk8OhSsc1o/s1600/toy-story-10.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-28 22:36:20</field>
		<field name="modified">2012-03-28 22:36:20</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">6</field>
		<field name="title">Pixar Animation Studios</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.solarnavigator.net/films_movies_actors/film_images/Pixar_animation_studios_logo.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-28 22:42:30</field>
		<field name="modified">2012-03-28 22:42:30</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">8</field>
		<field name="title">Ed Catmull</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://fyi.utah.edu/wp-content/uploads/2012/01/catmull_ed_602.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-28 22:44:33</field>
		<field name="modified">2012-03-28 22:44:33</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">10</field>
		<field name="title">NYIT</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://upload.wikimedia.org/wikipedia/commons/thumb/3/35/A2_Seal.jpg/205px-A2_Seal.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-03-29 08:09:04</field>
		<field name="modified">2012-03-29 08:09:04</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">11</field>
		<field name="title">NYIT</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://upload.wikimedia.org/wikipedia/commons/thumb/3/35/A2_Seal.jpg/205px-A2_Seal.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-29 08:09:04</field>
		<field name="modified">2012-03-29 08:09:06</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">12</field>
		<field name="title">Monsters, Inc.</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://collider.com/wp-content/image-base/Movies/M/Monsters_Inc/Monsters%20Inc%20movie%20image%20Pixar%20(2).jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-03-29 09:57:24</field>
		<field name="modified">2012-04-10 14:45:17</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">14</field>
		<field name="title">Sloth Story</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">https://images.nonexiste.net/popular/wp-content/uploads/2012/03/Hand-sized-baby-sloth-anyone.jpeg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-03-29 14:21:36</field>
		<field name="modified">2012-04-17 14:27:04</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">16</field>
		<field name="title">Conference Chair Terrence Masson</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://photos.siggraph.org/gallery3/var/resizes/SIGGRAPH-2010-Photos/Keynote-Sessions/20100726-DSC_2125.jpg?m=1311175864</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-03 14:40:20</field>
		<field name="modified">2012-04-03 14:41:37</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">17</field>
		<field name="title">Official Trailer</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=cvOQeozL4S0</field>
		<field name="video">cvOQeozL4S0</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-03 14:59:16</field>
		<field name="modified">2012-04-03 14:59:20</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">18</field>
		<field name="title">George Lucas</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://upload.wikimedia.org/wikipedia/commons/a/a0/George_Lucas_cropped_2009.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-03 15:00:12</field>
		<field name="modified">2012-04-03 15:00:55</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">19</field>
		<field name="title">poster</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.pixartalk.com/wp-content/uploads/2009/06/monsterstheatrical2.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-03 15:00:43</field>
		<field name="modified">2012-04-03 15:00:45</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">20</field>
		<field name="title">old logo</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://upload.wikimedia.org/wikipedia/en/d/dc/ILM.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-03 15:08:14</field>
		<field name="modified">2012-04-03 15:08:16</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">21</field>
		<field name="title">Digital Fauxtography banner at SIGGRAPH</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://visualfx.com/photos_files/Media/digfaux/digfaux.jpg?disposition=download</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-10 14:30:33</field>
		<field name="modified">2012-04-10 14:32:39</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">22</field>
		<field name="title">&quot;The Works&quot;</field>
		<field name="story_type_id">3</field>
		<field name="date">1979-01-01 00:00:00</field>
		<field name="story">&quot;The Works is a shelved 3D computer animated film which was under development by the staff of the Computer Graphics Lab in association with the New York Institute of Technology in Old Westbury, New York. Being worked on sporadically from 1979 to 1986&quot;</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-10 15:05:25</field>
		<field name="modified">2012-04-10 15:05:33</field>
		<field name="source_name">Wikipedia</field>
		<field name="source_url">http://en.wikipedia.org/wiki/The_Works_(film)</field>
	</row>
	<row>
		<field name="id">25</field>
		<field name="title">Logo</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.lucasfilm.com/divisions/lfl/img/lfl_intmark_rgb.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-13 14:40:27</field>
		<field name="modified">2012-04-13 14:40:27</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">26</field>
		<field name="title">Homer In 3D</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.simpsonsfolder.com/gallery/homer3/3d01.gif</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-13 14:41:58</field>
		<field name="modified">2012-04-13 14:42:00</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">27</field>
		<field name="title"></field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://mimg.ugo.com/201005/44356/simpsons-tron.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-13 14:42:45</field>
		<field name="modified">2012-04-13 14:42:45</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">28</field>
		<field name="title">Box Art</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://upload.wikimedia.org/wikipedia/en/d/dd/Ultima_Underworld_cover.png</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-13 14:57:07</field>
		<field name="modified">2012-04-13 14:57:07</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">30</field>
		<field name="title">Laterrr</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://i.imgur.com/8tGx8.gif</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-04-17 14:16:52</field>
		<field name="modified">2012-04-23 14:49:41</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">31</field>
		<field name="title">How I eat cereal</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://i44.tinypic.com/169lys8.gif</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-17 14:22:05</field>
		<field name="modified">2012-04-17 14:22:10</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">32</field>
		<field name="title">yikes</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://i.imgur.com/tlc6Y.gif</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-17 14:24:11</field>
		<field name="modified">2012-04-17 14:24:11</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">33</field>
		<field name="title">WHAAAA--</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://theuniblog.evilspacerobot.com/wp-content/uploads/2011/06/sloth-sitting-on-chair-behind-door.gif</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-17 14:26:52</field>
		<field name="modified">2012-04-17 14:26:52</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">34</field>
		<field name="title">Staying busy</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://i.imgur.com/SYOZc.gif</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-17 14:30:50</field>
		<field name="modified">2012-04-17 14:30:50</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">35</field>
		<field name="title">No hugs</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://24.media.tumblr.com/tumblr_lhn7qqfQk31qzrrzdo1_400.gif</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-18 11:08:01</field>
		<field name="modified">2012-04-18 11:08:01</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">36</field>
		<field name="title">Ninja Cat</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://24.media.tumblr.com/tumblr_m1j04knGY91qdlh1io1_400.gif</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-18 11:09:12</field>
		<field name="modified">2012-04-18 11:09:12</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">37</field>
		<field name="title">This happens in the desert.</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://i.imgur.com/Azkmu.gif</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-23 14:50:07</field>
		<field name="modified">2012-04-23 14:50:09</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">38</field>
		<field name="title">Movie Poster</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://upload.wikimedia.org/wikipedia/en/b/b2/ReturnOfTheJediPoster1983.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-04-23 16:32:12</field>
		<field name="modified">2012-04-23 16:52:57</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">39</field>
		<field name="title">The name &quot;Alias&quot;?</field>
		<field name="story_type_id">3</field>
		<field name="date">1983-01-01 00:00:00</field>
		<field name="story">The name â€œAliasâ€ was arrived at during a brainstorming session when Susan said â€œWhat we need is an alias for the company.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 11:56:39</field>
		<field name="modified">2012-08-10 11:57:01</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">40</field>
		<field name="title">First Alias office space?</field>
		<field name="story_type_id">3</field>
		<field name="date">1983-01-01 00:00:00</field>
		<field name="story">The first office was in an elevator shaft and rent was $150/month in the always-under-construction â€œMuch Musicâ€ building, Canadaâ€™s version of MTV.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 11:57:59</field>
		<field name="modified">2012-08-10 11:58:02</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">41</field>
		<field name="title">The Alias Renderer</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">Raycasting (as Alias called it) is the casting of 2.5D rays into 2.5D buckets of triangles. We call the rays (and geometry) 2.5D because they are in the projected screen space of the image, so they are 2D, but they still have a bit of Z depth information which we can use to generate a real 3D intersection point. Alias Raycasting is like ray tracing in that we can compute volume intersections (fog, particles, glows, et. al.) with the speed of a 2D intersetion test, but unlike raytracing in that no secondary rays are (or can be) generated due to the nature of the geometry which is already projected into 2.5D. The Raycasting algorithm is closest to the ZZbuffer (yes, 2 Z's) presented  a Siggraph a few years back (the paper was unrelated to A|W).
	People also tend to think of rendering as a post process, separate task. The Maya renderer is completely integrated so that geometric, dynamic or other properties of the scene can affect the shading (ie. connect the Y coordinate of a sphere to the red channel of a shader and you've got a sphere that gets &quot;redder&quot; the higher it is translated)</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 12:01:09</field>
		<field name="modified">2012-08-10 12:01:12</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">42</field>
		<field name="title">wrl</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">A little known fact: The name of the Alias image viewing utility â€œwrlâ€ came about when Will Anielewicz added to the existing code of â€œrlâ€ and wanted to change itâ€™s nameâ€¦hence the self initialed w(ill)rl utility name we all know and love today. Will developed his skills in obscurity at Omnibus. One of his dozen-or-so variants of an extrusion program was called â€œnewtube2â€, and itâ€™s help went approximately as follows:

newtube2: useage: file x y z xbang ybang zbang xtang ytang zbang
file: a ppt file to extrube about x y z
xbang ybang zbang: do the obvious
xtang ytang ztang: use only if you wrote the code

animators had to chain together dozens of unix programs using Cshell. In fact, Keith Ballinger, a TD, programmed ease-in/ease-out values with his TI-58 calculator. Others looked up the values in tables and typed them in with a text editor
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">41</field>
		<field name="published">1</field>
		<field name="created">2012-08-10 12:03:24</field>
		<field name="modified">2012-08-10 12:03:26</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">43</field>
		<field name="title">Unique feature</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">A unique feature of the 1000 model was its built-in composite video output. This allowed you to record to a VHS deck whatever you saw on the screen in realtime. With masked brush shapes and color cycling, you could really get some amazing effects out of D-Paint II with this set up. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">2</field>
		<field name="published">1</field>
		<field name="created">2012-08-10 14:30:49</field>
		<field name="modified">2012-08-10 14:30:54</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">44</field>
		<field name="title">Testimonial!</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">Amiga - &quot;The cool thing about the Amiga was/is (I have two in my house right now...) that it had a built-in graphics and sound co-processors and could do true multi-tasking on the Motorola 68000 series, which DOS, MS-DOS, WindowsX and MacOS never did on that CPU...or any other, for that matter. What a box!â€ </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">44</field>
		<field name="published">1</field>
		<field name="created">2012-08-10 14:33:10</field>
		<field name="modified">2012-08-10 14:33:19</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">45</field>
		<field name="title">Fun Fact!</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">Nolan Bushnell, creator of â€œpongâ€ and the founder of Atari Computers is also the founder of Chuck E. Cheese Pizza.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 14:52:50</field>
		<field name="modified">2012-08-10 14:52:56</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">46</field>
		<field name="title">Fun Fact!</field>
		<field name="story_type_id">3</field>
		<field name="date">1988-01-01 00:00:00</field>
		<field name="story">Blue Skyâ€™s very first jobs included a recycling campaign for the Glass Institute of NY in 1988 and a film job for &quot;Famous Players&quot;, a theater chain in Canada. That job featured procedurally generated skies, clouds, sunset and water with a glass logo.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 14:59:49</field>
		<field name="modified">2012-08-10 15:00:08</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">47</field>
		<field name="title">Fun Fact!</field>
		<field name="story_type_id">3</field>
		<field name="date">1977-01-01 00:00:00</field>
		<field name="story">Bo Gehring Associates first feature film work in 1977 was the little know â€œDemon Seedâ€ sci-fi B-movie about a computer who becomes sentient and wishes to reproduce with his creators wife. (A late night classic now to be sure.) Bo provided vector graphics for computer displays on set, making this one of the very earliest examples of CG in a feature film</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 15:05:48</field>
		<field name="modified">2012-08-10 15:05:55</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">48</field>
		<field name="title">Fun Fact!</field>
		<field name="story_type_id">3</field>
		<field name="date">1982-01-01 00:00:00</field>
		<field name="story">They used the first Digital Disk recorder system, the ESS-1 made by Ampex, and used code they had written on PDP-11 minicomputers for rendering. In the later eighties, they did a huge project for Williams videogames, but I am unsure as to how the company fared after that. Anyone know!?
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">2</field>
		<field name="published">1</field>
		<field name="created">2012-08-10 15:30:53</field>
		<field name="modified">2012-08-10 15:30:56</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">49</field>
		<field name="title">Fun Fact!</field>
		<field name="story_type_id">3</field>
		<field name="date">1984-01-01 00:00:00</field>
		<field name="story">The intent at CFC from the very beginning was full frame digital manipulation and compositing of live action footage. This was a unique charter among startup CG facilities, that is not to be primarily concerned with vector or raster computer generated imagery.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 15:43:53</field>
		<field name="modified">2012-08-10 15:43:56</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">50</field>
		<field name="title">Merge with Framestore</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-08-01 00:00:00</field>
		<field name="story">In August of 1997 CFC sold 100% ownership to MegaloMedia which also owns Londonâ€™s Frame Store post house and the Sachi &amp; Sachi company. Today, alongside Domino, Cineon, Matador and Flame systems, CFC still uses their original Benchmark computer systems, a true testament to how far ahead that technology was when first designed over a dozen years ago.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 15:45:58</field>
		<field name="modified">2012-08-10 15:46:01</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">51</field>
		<field name="title">â€œcamera matrix programâ€</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Both simple and revolutionary, the idea was to be able to automatically track as little as four points (6 were ideal) in a filmed scene, allowing it to extrapolate matchmove information for compositing CG imagery perfectly â€œintoâ€ a live action scene. Film footage was rear projected on a vertically mounted Calcomp 30x40 inch translucent plotting surface. An Oxberry based camera rig was used to increment the rear projection images one frame at a time.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 15:56:46</field>
		<field name="modified">2012-08-10 15:56:46</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">52</field>
		<field name="title">Fun Fact!</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">I was once animating with a client, who said something like &quot;this is amazing, how fast you can do this stuff.  This must help you get it right very easily&quot; to which I replied &quot;We don't make any fewer mistakes than anybody else. We just compress the time between mistakes.&quot; </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 16:04:40</field>
		<field name="modified">2012-08-10 16:04:53</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">53</field>
		<field name="title">Fun Fact!</field>
		<field name="story_type_id">3</field>
		<field name="date">1984-01-01 00:00:00</field>
		<field name="story">Andrew Berend left in late 1984 to join Mike Boudry and co-found the Computer Film Company (CFC)</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 16:07:23</field>
		<field name="modified">2012-08-10 16:07:23</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
	</row>
	<row>
		<field name="id">54</field>
		<field name="title">Early rendering story ...</field>
		<field name="story_type_id">3</field>
		<field name="date">1983-01-01 00:00:00</field>
		<field name="story">â€œOne of our first rendered jobs went to 1-inch tape (remember that?) via a Sony BVH-2000 (or 2500, whichever it was that allowed single frame edits). The frame buffer would fill with the image, then a person had to hit &quot;edit&quot; on the Sony, and it would pre-roll, run forward, record the frame, and then stop. Then a person had to tell the computer to render the next frame. That person was me. I had to stay awake, hitting 2 buttons every 5 minutes, in the correct order, for about 36 hours straight, in order to get it done on time. The truth is, I did fall asleep for a few hours around 5AM, so I lost some time, but I don't think it matters now if I admit it.â€ </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">67</field>
		<field name="published">1</field>
		<field name="created">2012-08-10 16:09:10</field>
		<field name="modified">2012-08-10 16:09:12</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">55</field>
		<field name="title">Fun Fact!</field>
		<field name="story_type_id">3</field>
		<field name="date">1983-01-01 00:00:00</field>
		<field name="story">In the 80's we produced graphics animation, character animation and special effects direct to video.  This group is often overlooked because of the analog video component of their systems. However, they implemented computer control of many aspects of the animation process, keyframing, hierarchical control structures and image processing, years before many others in the field.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">76</field>
		<field name="published">1</field>
		<field name="created">2012-08-10 16:58:52</field>
		<field name="modified">2012-08-10 17:00:43</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">56</field>
		<field name="title">Fun Fact!</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">Cranston/Csuri was originally to be called Animatrix, but the name was already being used by another company.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 17:04:31</field>
		<field name="modified">2012-08-10 17:04:31</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">57</field>
		<field name="title">early hardware</field>
		<field name="story_type_id">3</field>
		<field name="date">1983-01-01 00:00:00</field>
		<field name="story">Hardware included PDP 11-780 and 750's, a Megatek vector display and an IMI Pyramid (3 or 4 mips) and VAX 780 (1 mip!). One of the first production ethernet networks connected everyone. Rendering at that time was done to memory, not to hard a disc, and was output to a Celco 2000 film recorder. Also used was a rare but extremely cool digital disk recorder called an Ampex ESS. (Way ahead of it's time in 1983, the Abekas was not released until about 1987.) </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-10 17:07:06</field>
		<field name="modified">2012-08-10 17:07:06</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">58</field>
		<field name="title">Licensed software</field>
		<field name="story_type_id">3</field>
		<field name="date">1985-01-01 00:00:00</field>
		<field name="story">In 1985 CCP in-house software was licensed to the Japan Computer Graphics Laboratory (JCGL) </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 17:09:59</field>
		<field name="modified">2012-08-10 17:10:04</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">59</field>
		<field name="title">Fun Fact!</field>
		<field name="story_type_id">3</field>
		<field name="date">1988-01-01 00:00:00</field>
		<field name="story">Michael Wahrman and I did &quot;Mike The Talking Head&quot; (officially christened Mike Normal ) at deGraf/Wahrman in 1988, live at the SIGGRAPH Electronic Theatre in Atlanta. Mike was a virtual caricature of the late Mike Gribble, the host of that show, and the Mike of Spike and Mike's animation festival.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 17:46:19</field>
		<field name="modified">2012-08-10 17:47:11</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">60</field>
		<field name="title">Fun Fact!</field>
		<field name="story_type_id">3</field>
		<field name="date">1990-01-01 00:00:00</field>
		<field name="story">In 1990, deGraf/Wahrman did The Funtastic World of Hanna-Barbera, the first CG ridefilm. It was a fully 3D chase/ride through Bedrock and Scooby-Doo's castle, with cel animated characters, for Universal Studios Florida. (Rhythm and Hues also helped out with this production in the end.)</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">91</field>
		<field name="published">1</field>
		<field name="created">2012-08-10 17:48:13</field>
		<field name="modified">2012-08-10 17:49:09</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">61</field>
		<field name="title">Fun Fact!</field>
		<field name="story_type_id">3</field>
		<field name="date">1987-01-01 00:00:00</field>
		<field name="story">The Digital Film Printer had been literally just sitting in a warehouse when Digital Productions (who had leased it from Triple-I) went out of business in 1987. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 17:55:47</field>
		<field name="modified">2012-08-10 17:55:51</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">62</field>
		<field name="title">Fun Fact!</field>
		<field name="story_type_id">3</field>
		<field name="date">1985-01-01 00:00:00</field>
		<field name="story">Our original setup was a 1200 baud modem connection to an Amdahl V6 running APL in Bethesda Maryland using a Tekronix dispay to preview wireframe (polygons refreshed at one per second, thatâ€™s one polygon per second!). The perspective data was written onto 9 track tape and mounted on an IBM 370/158 to do scan conversion. Another tape was written as hi con images onto 9 track and shipped to LA for film recording on a Stromberg Carlson 4020 film recorder. Processed film was sent to NYC where I deinterlaced it onto hicon film and made a print to separate out the colors and have matte rolls that I could mount on an optical printer to do multiple passes with color filters onto color negative, which was then processed and printed at Technicolor downstairs. Total time to see a color image: 1 week tops.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">97</field>
		<field name="published">1</field>
		<field name="created">2012-08-10 17:59:47</field>
		<field name="modified">2012-08-10 17:59:50</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">63</field>
		<field name="title">Fun Fact!</field>
		<field name="story_type_id">3</field>
		<field name="date">1990-01-01 00:00:00</field>
		<field name="story">Digital Pictures was eventually sold to a company called Molinaire, which was itself owned by WH Smith. Moli was a TV post house, so buying DP made sense. WH Smith was (and is) a chain of bookstores, and what they were doing buying TV companies is not clear, nor was it then.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">67</field>
		<field name="published">1</field>
		<field name="created">2012-08-10 18:02:44</field>
		<field name="modified">2012-08-10 18:02:47</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">64</field>
		<field name="title">Fun Fact!</field>
		<field name="story_type_id">3</field>
		<field name="date">1986-01-01 00:00:00</field>
		<field name="story">When I first started, we were working on Data
General Eclipse 3300s, two of them. Each machine was about 7 feet high, 2 feet wide and 3 feet deep, had 32 Kb main memory and a 300Mb disk drive which was about twice the size of a domestic washing machine. I'd say they were maybe 4 or 5 times more powerfull than an Amiga 500. We rendered tests direct to a frame buffer, usually 1-2 days for a 5-10 second test and rendered directly to a Matrix film plotter - there was no disk space to store rendered images as files. Each frame would take 30-90 minutes to render and 10 minutes to plot. Color consistency isn't guaranteed across film baths so if we missed or gashed a frame, we started over after we'd got the film back from the labs.  Our renderer, which was a fine one, was written in house, did no ray tracing or texture mapping, had no reflection maps but did have shadows as long as we didn't use re-entrant polygons in our models. Intersecting surfaces were a no-no. We modeled and animated by writing Fortran 5 code. The last job done on the Eclipses was at a stage when they were so knackered that I was entirely losing disk data about 3 times a day and was archiving my code every 20 minutes or so I could recover it after I'd reformatted the disk every time it went down. One of the disk drives bust so I was booting one machine, starting a render, removing the drive and plugging it back into the other machine so I could start a render on that one. My 8 second sting took a week to render. The air conditioner was being overworked so much it would freeze up every couple of hours, melt and dump gallons of water into the machine room. We had buckets all over the disk drives and mainframes. I didn't get to go home for 10 days.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">99</field>
		<field name="published">1</field>
		<field name="created">2012-08-10 18:04:56</field>
		<field name="modified">2012-08-10 18:04:58</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">65</field>
		<field name="title">Good times</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">DP was one of those experiences like going away to college or to be in the military which stands out in your memory and establishes relationships in a short period of time that continue for many years after the 'main' experience. Imagine the setting. You start from say the LA airport and drive a short distance and find yourself in a 'bad' part of town, project housing and low-rent industrial warehouses.  You turn into a dirty alley that runs beside a plastic products factory and come to a chain-link access control gate with concertina razor wire along the top.  Once you are buzzed through the gate you are in a parking lot in front of a somewhat rundown warehouse.  You enter the warehouse and suddenly it's a different world.  Like a high tech artist's loft filled with digitizing tables, Technical Director Workstations and as you turn a corner and look to your left a glassed in raised floor computer room like something out of a super-secret government lab. The transition was amazing.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 19:05:02</field>
		<field name="modified">2012-08-10 19:05:42</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">66</field>
		<field name="title">Cray story</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">A Cray is a real headache. This one had like a $12,000 a month electric bill, and the maintenance and support bill for the &quot;Crayons&quot;, the people who attended to it and kept it working came to like $50,000 a month. Its like a 747 jetliner. If its not in the air with seats full, you're losing money!</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">106</field>
		<field name="published">1</field>
		<field name="created">2012-08-10 19:06:53</field>
		<field name="modified">2012-08-10 19:07:32</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">67</field>
		<field name="title">The Last Starfighter</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">DPâ€™s first major computer graphic project was for The Last Starfighter, $4.5 million worth of state-of-the-art high resolution CG animation. Beginning in Oct 83, Digital Productions traded in the â€œolderâ€ Cray-1S for the very first Cray X-MP supercomputer. The Cray was fronted by a VAX 11/780 and was used to produce nearly 300 shots totaling 25 minutes of screen time. The team used E&amp;S PS400's for modeling and IMI vector motion systems for motion preview with Ramtek frame buffers for display. When Triple-I had wrapped the TRON work and decided not to continue in the CG film business, DP leased the Digital Film Printer (DFP) and hooked it up to on of the high speed channels of the Cray. The Cray driven DFP could scan 35mm film at four seconds a frame, and film out the 2000x2560 rendered images at twelve seconds a frame.
For the first time, highly detailed computer generated images were integrated with live action as realistic scene elements, rather than as monitor graphics or deliberately â€œCGâ€ looking images. Gary Demos from the very begining always had the drive to only produce the highest resolution, highest quality imagery possible. 
Kevin Rafferty(ILM) led the team that digitally encoded (modeled) many of the forms designed for the film by Ron Cobb. The technique used was to have top, front and side views of the model drawn orthographically on blueprint-like paper. A mouse/cursor (or â€œpuckâ€) with cross hairs would then be used to input the lines of the drawing, one point at a time. Details even included little 3D digital stunt actors inside the Gunstarâ€™s cockpit.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 19:11:09</field>
		<field name="modified">2012-08-10 19:13:20</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">68</field>
		<field name="title">Hard Woman</field>
		<field name="story_type_id">3</field>
		<field name="date">1985-01-01 00:00:00</field>
		<field name="story">Bill Kroyer and Chris Baily animated Mick Jagger's Hard Woman rock video in 1985. The 4.5 minute long animation was Co-produced by Nancy St.John and Alan Peach. Because of the tught deadline, the team concentrated on the character animation, with rendering being restricted to extremely simplified tube-like forms.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 19:14:59</field>
		<field name="modified">2012-08-10 19:15:44</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">69</field>
		<field name="title">Meeting Mick Jagger</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">I was in transition at the time, moving from the head of the modeling department (we called them designer/encoder's) into the land of the TD. TD's at DP did everything else besides modeling...animation, lighting, compositing. All proprietary. I laid out the Adobe town for the video, and handed the layout work over to my successor, Stephen Skinner, and I moved on to TD'ing my first project (I believe it was an HBO &quot;behind the scenes&quot; bumper. It was during that time that a bunch of us late-nighters met Mick Jagger. Fun time.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">109</field>
		<field name="published">1</field>
		<field name="created">2012-08-10 19:17:36</field>
		<field name="modified">2012-08-10 19:18:09</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">70</field>
		<field name="title">The Omnibus takeover</field>
		<field name="story_type_id">3</field>
		<field name="date">1986-01-01 00:00:00</field>
		<field name="story">In about 1985, CDC and Ramtek were both breaking up or going out of business themselves, and wanted out of the digital movie making business at any cost. Anxious to cut their losses, the board went along with a hostile takeover bid by Omnibus, breaking there agreement with Whitney Jr. and Demos. Backed by the Royal Bank of Canada, Omnibus arranged for a leveraged buy-out that would burden them with nearly $25 million in debt. Unable to prevent what they saw as sheer folly, and also unable to afford a costly legal battle to protect their company, John Whitney Jr. and Gary Demos left to start up Whitney/Demos Productions. Digital Productions was renamed &quot;Omnibus Simulation&quot; in June of 1986, and declared bankruptcy (along with Omnibus and Abel) only 9 months later on April 13th of 1987.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 19:21:35</field>
		<field name="modified">2012-08-10 19:21:37</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">71</field>
		<field name="title">1st edition cover</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://img2.imagesbn.com/images/103030000/103032135.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-10 20:07:04</field>
		<field name="modified">2012-08-10 20:07:07</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">72</field>
		<field name="title">Fun Fact!</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">They first bought the first two SGI terminals (at that stage SGI only made terminals) sold out of the US and used them as a front end to a DEC VAX 11-780. The disk drives were two removable platter â€œwashing machinesâ€ which stood about 3 feet high and held a massive 450megs of data.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-11 14:03:53</field>
		<field name="modified">2012-08-11 14:03:58</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">73</field>
		<field name="title">Tractor parts</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">We were told that only a month before a shipment marked â€œTractor Partsâ€ had been intercepted on its way to West Germany and found to contain a VAX computer, so the extremely jumpy American customs people grabbed our SGI terminals.  We had to hire a lawyer in the states in order to get them released, two weeks after we were due to start on British Telecom Internationalâ€™s new corporate identity using this gear.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">115</field>
		<field name="published">1</field>
		<field name="created">2012-08-11 14:06:58</field>
		<field name="modified">2012-08-11 14:07:03</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">74</field>
		<field name="title">Abel Image connection</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">Paul did a source code co-development deal with Abel Image Research (Robert Abelâ€™s software division), where Electric helped with some the PAL video issues and worked closely with the Abel team to debug the code. ( The development team at Abel at the time included Roy Hall, Hank Weghorst, Kim Shelley a number of other Cornell luminaries. ) 
EI began using the Abel system for television work and eventually added an Oxberry Matrix 35mm camera for film work. Like most companies of this early era, the EI team had to work pretty much from scratch creating custom renders, color look up tables, modeling utilities etc., and without the benefit of the academic superstructure that already existed in the US. 
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-11 14:09:19</field>
		<field name="modified">2012-08-11 14:09:46</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">75</field>
		<field name="title">DORIS</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">The various shareholders felt that we should have a gimmicky name for the VAX/SGI/AbelGraphix combination, so at a late night pub session Colin Reynolds drunkenly suggested â€œDorisâ€.  After a few more pints we decided that DORIS stood for â€œDigital Optical Raster Imaging Systemâ€ and thatâ€™s what we told the press it was called.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-11 14:11:19</field>
		<field name="modified">2012-08-11 14:11:21</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">76</field>
		<field name="title">Many &quot;firsts&quot;</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">The company was responsible for many European â€œfirstsâ€ â€“ first to use C and Unix for commercial graphics production (most everyone else was using VMS and Pascal), the first bit of serious raytracing on UK television (an ident for Yorkshire Television), the first real time display SGI graphics terminals, first UK dynamics animation package (written by David Benson). A heavy use of clever compositing and geometric projection tricks (picked up from the Abel initially) gave the companyâ€™s work a distinctive look and built up a reputation for quality</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-11 14:13:43</field>
		<field name="modified">2012-08-11 14:13:45</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">77</field>
		<field name="title">Framestore connection</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">About this time EI became one of the founding shareholders in The Framestore, along with director Steve Barron (Teenage Mutant Ninja Turtles, Merlin, etc.).  The new company had the first Quantel Harry and has since grown in to one of Europeâ€™s largest digital post houses.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-11 14:21:48</field>
		<field name="modified">2012-08-11 14:22:05</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">78</field>
		<field name="title">first hardware</field>
		<field name="story_type_id">3</field>
		<field name="date">1968-01-01 00:00:00</field>
		<field name="story">E&amp;S first products were the LDS-1, LDS-2 then Picture System-2 vector systems; all used with another host system such as the VAX-11/780 (Abel used a PS2 with the Gould 6031)</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-11 14:30:18</field>
		<field name="modified">2012-08-11 14:30:22</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">79</field>
		<field name="title">In house software</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">Like other major production companies, Ex Machina has also relied on developing itâ€™s own custom software. Its in-house character animation system â€œAppiaâ€ was developed in 1991/92 and first used during the production of &quot;World of Materials&quot; directed by Jerzy Kukar. This was a 10 minute 70mm stereo movie for a Korean International Festival. (Ex Machina was also involved in the training of CG artists for a Korean CG company who did one part of the film.)</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-11 15:52:06</field>
		<field name="modified">2012-08-11 15:52:10</field>
		<field name="source_name">CG101: Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">80</field>
		<field name="title">relocated</field>
		<field name="story_type_id">3</field>
		<field name="date">1983-01-01 00:00:00</field>
		<field name="story">Image West moved from Hollywood to Studio City, CA in 1983.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 14:20:33</field>
		<field name="modified">2012-08-16 14:21:13</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">81</field>
		<field name="title">Star Wars connection</field>
		<field name="story_type_id">3</field>
		<field name="date">1975-01-01 00:00:00</field>
		<field name="story">Image West's only feature film CG project was for the original Star Wars film in 1977. The Yavin planet count down imagery was done by John Wash and Jay Teitzell. A great deal more imagery for Star Wars was traditional animation, analog effects and other non-CG techniques.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 14:22:54</field>
		<field name="modified">2012-08-16 14:26:52</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">82</field>
		<field name="title">Realtime .. repeated</field>
		<field name="story_type_id">3</field>
		<field name="date">1973-01-01 00:00:00</field>
		<field name="story">Digital image-making state of the art was a PDP-11 and a $50,000 framebuffer, and a bunch of assembly or FORTRAN programmers hacking away from scratch. Triple-I, NYIT, and MAGI were about the only people going that route. Image West had always had the advantage of &quot;real time&quot;, meaning that despite the limitations of the analog rescan technology, it could run right before your eyes, and be adjusted on the fly. Its big downfall was complete lack of repeatability, due to all those knobs and patch wires. (Scanimate) After reviewing all the options, Cliff Brown and I decided a good approach would be to build a system based on the analog rescan technology, but using digital computers to track and store the setups needed to repeat a job. I did not realize at the time how large a project this would be (VersEFX).â€ </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">106</field>
		<field name="published">1</field>
		<field name="created">2012-08-16 14:27:58</field>
		<field name="modified">2012-08-16 14:28:01</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">83</field>
		<field name="title">the origin of raised flooring!?</field>
		<field name="story_type_id">3</field>
		<field name="date">1973-01-01 00:00:00</field>
		<field name="story">This was the first facility I had ever designed that involved raised computer flooring. Half of the building was on a level two feet lower than the other half. So we used raised computer flooring to make the two floor levels equal. This gave us about 20&quot; under the floor for cables, power and air conditioning.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">106</field>
		<field name="published">1</field>
		<field name="created">2012-08-16 14:28:50</field>
		<field name="modified">2012-08-16 14:28:54</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">84</field>
		<field name="title">The End</field>
		<field name="story_type_id">3</field>
		<field name="date">1985-01-01 00:00:00</field>
		<field name="story">The company faced increasingly hard times competing with the trend of completely digital effects, 3D CG and digital video effects boxes like the ADO. The new VersEFX system that they had partnered with SFP on (the French TV production company) had gone to France, and they were trying to build one for themselves. But hybrid video technology was not going to able to compete with the all digital systems, so they made a deal with Symbolics to get one of their S-series systems with both paint and 3D 
Capabilities. Unfortunately, they could never return to the revenue levels they had been working at with the Scanimates,   and in desperation, they attempted a public offering on the Vancouver stock exchange. That attempt failed and the company closed its doors in 1985.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 14:29:50</field>
		<field name="modified">2012-08-16 14:29:54</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">85</field>
		<field name="title">Funny George Story</field>
		<field name="story_type_id">3</field>
		<field name="date">1999-01-01 00:00:00</field>
		<field name="story">The second floor of the building was being completely renovated for the video editing space, and George would come by occasionally to check up on the work. One day he stops by and makes a casual question about why a wall has a door put in a particular location. Some days later he returns to find that the construction workers have actually moved the door to another spot! Hoping to avoid future misunderstandings, George tells the workers that just because he asks a question doesnâ€™t mean they need necessarily jump to conclusions and change something. Satisfied that all is now well, he leaves the workers to finish the job. Returning again sometime later, he finds that the workers have moved the door back to its original position. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">7</field>
		<field name="published">1</field>
		<field name="created">2012-08-16 14:38:54</field>
		<field name="modified">2012-08-16 14:39:00</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">86</field>
		<field name="title">Temp location in Bel Marin Keys</field>
		<field name="story_type_id">3</field>
		<field name="date">1982-01-01 00:00:00</field>
		<field name="story">A few years later the Graphics group would move to a new custom office space up north in Bell Marin Keys, Novato. (This was also the year of the big Marin County flood that left 5 feet of water in down town San Enselmo). In 1983 the permanent space for ILM in SanRafael was finished, and the Graphics Group moved into â€œCâ€ building on Kerner Blvd.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 14:40:31</field>
		<field name="modified">2012-08-16 14:40:33</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">87</field>
		<field name="title">Busy early '80s</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">During the early 1980s, many Lucasfilm corporate and management changes take place, with the original President Charlie Weber being replaced by Bob Greeber, who is then replaced by Doug Norby. The â€œEgg Companyâ€ Lucasfilm location in LA is closed down, and development on SkyWalker Ranch was ongoing.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 14:42:11</field>
		<field name="modified">2012-08-16 14:42:13</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">88</field>
		<field name="title">The Foonly F1</field>
		<field name="story_type_id">3</field>
		<field name="date">1974-01-01 00:00:00</field>
		<field name="story">The F1 was originally built by Triple-I in hopes of getting a large contract with the Government for an Optical Character Recognition system. Its design became the DEC KL-10, but was built on five wire-wrap pages, that were machine wrapped. This meant that it was a one-of-a-kind system, a prototype that never went anywhere. It required a DEC KA-10 (5 tons of stuff that barely could do 1 MIP!), which ran a hacked up version of the TOPS10 operating system, just to boot it. When it was up, it probably ran at something like 6 MIPS. The Disk systems were old DEC washing-machine style drives that barely held 50Mb, and they crashed at least every month! TRANEW rendering software was written by Gary Demos, Bill Dungan, Rich Schroeppel, Jim Blinn, and a host of others while Triple-I had the machine. Triple-I had married the F1 to a modified PFR-80 film recorder, one of the first in the motion picture industry. Omnibus bought the F1 system because it had produced the majority of the CGI in the film &quot;TRON&quot;, and it seemed like a good way to jump-start feature film production. We did scenes from &quot;Explorers&quot;, and &quot;Flight of the Navigator&quot; on it, but it was painful.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">106</field>
		<field name="published">1</field>
		<field name="created">2012-08-16 14:52:00</field>
		<field name="modified">2012-08-16 14:52:03</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">89</field>
		<field name="title">Founders</field>
		<field name="story_type_id">3</field>
		<field name="date">1975-01-01 00:00:00</field>
		<field name="story">The Motion Picture Project or Entertainment Technology Group was formed at Triple-I in 1975 by Gary Demos, John Whitney Jr., Tom McMahon, Karol Brandt and Art Durinski, later joined by Craig Reynolds and many others. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 14:53:18</field>
		<field name="modified">2012-08-16 14:53:21</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">90</field>
		<field name="title">Close Encounters tests</field>
		<field name="story_type_id">3</field>
		<field name="date">1975-01-01 00:00:00</field>
		<field name="story">The first project Whitney Jr. and Demos were charged with was a series of tests for the film Close Encounters of the Third Kind. The concept was for little glowing cubes to fly around during the start of the filmâ€™s finally. The filmâ€™s DP Vilmos Zigmund shot some plates with a crane, including some small spheres whose position would be input to a 3D tracking program to extrapolate the matchmove by which to render the 3D elements â€œintoâ€ the scene. (Malcom McMillan, a UCLA mathematician and key Triple-I programmer wrote this code)</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 14:54:57</field>
		<field name="modified">2012-08-16 14:55:00</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">91</field>
		<field name="title">Early software .. and Jim Blinn!</field>
		<field name="story_type_id">3</field>
		<field name="date">1977-01-01 00:00:00</field>
		<field name="story">Both Frank Crow and Jim Blinn worked here briefly in 1977 developing algorithms later published in their thesis work. The Actor/Scriptor Animation System (ASAS) was developed by Craig Reynolds, Art Durinski and others; and the modeling tools were written by Larry Malone(Nichiman) using tools such as the Tektronix 4014 storage tube display terminal running Tekshow.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 14:56:29</field>
		<field name="modified">2012-08-16 14:56:33</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">92</field>
		<field name="title">Oversees broadcast work</field>
		<field name="story_type_id">3</field>
		<field name="date">1976-01-01 00:00:00</field>
		<field name="story">Most of 1976 was spent producing broadcast logo packages for foreign markets, as the domestic networks were not ready to commit to the new idea of CG â€œflying logosâ€. NBC in particular was one early client Triple-I approached with the idea, only to be rejected in favor of a traditional spinning practical model.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 14:57:35</field>
		<field name="modified">2012-08-16 14:57:38</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">93</field>
		<field name="title">Lucasfilm tests</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Other 3D CG tests were done for Star Wars, The Black Hole, and The Empire Strikes Back, but did not end up in the finished films. One particular test for LucasFilm involved Art Durinski building a beautiful 60k poly count X-Wing fighter. Rendered at 4k by 6k resolution, Lucas was only impressed after the ever-amazing Mal MacMillan wrote some additional code to â€œdirtyâ€ it up from itâ€™s original pristine CG condition. It was eventually shown on the cover of â€œComputer Magazineâ€ in 1979. 
A lower poly count version was created for an animation test Gary Demos did of a five ship formation, complete with anti-aliasing and motion-blur. Unfortunately the seven thousand dollar per minute production cost required by Lucas was much too low for Triple-I to consider real production. Also in 1978 scanning and filmout tests were performed with Richard Edlund at LucasFilm, but the nature of the CRT technology and 5247 film stocks did not yield great results.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 14:58:30</field>
		<field name="modified">2012-08-16 14:58:33</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">94</field>
		<field name="title">Looker</field>
		<field name="story_type_id">3</field>
		<field name="date">1980-01-01 00:00:00</field>
		<field name="story">1980 saw the production of seven minutes of digital imagery for Looker; another Michael Chrichton film written after the authorâ€™s visits to Triple-I during Westword and FutureWorld productions. Full body 3D scans where made of an actress from software developed once again my Malcom McMillan. The film was about a company that created computer generated actresses from full body scansâ€¦dÃ©jÃ  vu?</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 14:59:26</field>
		<field name="modified">2012-08-16 14:59:29</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">95</field>
		<field name="title">Digital Productions spin-off</field>
		<field name="story_type_id">3</field>
		<field name="date">1981-01-01 00:00:00</field>
		<field name="story">About this time it was becoming clear to both John Whitney Jr. and Gary Demos that Triple-I was not going to allow the expansion or spin off of the Motion Picture Group as they had originally hoped. John and Gary were instrumental in the pitching and pre-production of the next big CGI film, Tron, but left in April of 1981 before its production to form their own company: Digital Productions.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 15:01:02</field>
		<field name="modified">2012-08-16 15:01:04</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">96</field>
		<field name="title">Tron</field>
		<field name="story_type_id">3</field>
		<field name="date">1982-01-01 00:00:00</field>
		<field name="story">Triple-I created the Sarkâ€™s Carrier, solor sailor and the MCP scenes for the end of the film. Some key people on the work included Art Durinski, Larry Malone, Craig Reynolds, Bill Dungan and Jeremy Swartz. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 15:01:55</field>
		<field name="modified">2012-08-16 15:01:57</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">97</field>
		<field name="title">The End</field>
		<field name="story_type_id">3</field>
		<field name="date">1983-01-01 00:00:00</field>
		<field name="story">After completing Tron and a 3D (steroscopic) project for Kodak/Epcot called â€œMagic Journeysâ€, Triple-I ceased itâ€™s computer graphics business. Some employees joined Digital Production while others joined  the new Symbolics Graphics Division.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 15:03:04</field>
		<field name="modified">2012-08-16 15:03:06</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">98</field>
		<field name="title">Starting hardware and software</field>
		<field name="story_type_id">3</field>
		<field name="date">1980-01-01 00:00:00</field>
		<field name="story">JCGL's system for television animation production consisted of a huge custom designed optical printer to print extra frames of the same image for reducing rendering time, 2 Dicomed 48-S film recorders, 2 Vax 780 super mini computers , 4 PDP 44s, 8 PDP 11s for ink and paint stations, two DeAnza scanners for scanning animation papers, 18 Genisco frame buffers for image buffering and one PS 300 for vector drawing. The software &quot;MK-1&quot; was based upon NYIT's Tween and Tweep software for vector animation generation and scanned image inking and coloring capabilities with help of Tokyo Institute of Technology Image Lab lead by Prof.Takeshi Agui. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 15:40:30</field>
		<field name="modified">2012-08-16 15:40:33</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">99</field>
		<field name="title">The Yearling</field>
		<field name="story_type_id">3</field>
		<field name="date">1981-01-01 00:00:00</field>
		<field name="story">The production of &quot;The Yearling&quot;, however, failed with only one completed episode, which was actually No.2. of the series. Because of various creative challenges, the production schedule became almost double of what had been estimated. This episode No. 2 was broadcast in April 1982 and became world's first television animated program completely processed with a computer. The rest of the 51 episode production was switched to the conventional hand drawn, hand painted method. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 15:44:17</field>
		<field name="modified">2012-08-16 15:44:20</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">100</field>
		<field name="title">The End</field>
		<field name="story_type_id">3</field>
		<field name="date">1987-01-01 00:00:00</field>
		<field name="story">JCGL lead Japan's CG production for 7 years but came to its dissolution in 1987 when its VAX based system could not compete any longer with cheaper more modern systems.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 15:46:49</field>
		<field name="modified">2012-08-16 16:08:26</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">101</field>
		<field name="title">Great success</field>
		<field name="story_type_id">3</field>
		<field name="date">1985-01-01 00:00:00</field>
		<field name="story">Mits Kaneko decided to move to 3D computer graphics production for commercial films and special effects on feature films. Jim Kristoff of Cranston Csuri Production (CCP) helped integrate 3D production software with the existing hardware, and the transition went well. The JCGL went on to win prizes including Nicograph, NCGA and INA gran-prixs. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 15:48:07</field>
		<field name="modified">2012-08-16 16:08:31</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">102</field>
		<field name="title">Sextone for President</field>
		<field name="story_type_id">3</field>
		<field name="date">1988-01-01 00:00:00</field>
		<field name="story">Their first Synthespian, created for SIGGRAPH/88, was â€œSextone for Presidentâ€. The 30 second piece demonstrated facial animation based on interpolating Dianaâ€™s digitized sculptures with software written by Larry Weinberg. The TALK program could mix any percentage of any facial shape at any frame, even with arbitrary polygon ordering. This technique of phoneme interpolation is today a standard way of producing 3D facial animation. The narration made heavy use of irony as the character lobbied for SAG (Synthetic Actors Guild) rights.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 16:11:52</field>
		<field name="modified">2012-08-16 16:11:54</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">103</field>
		<field name="title">The End</field>
		<field name="story_type_id">3</field>
		<field name="date">2004-01-01 00:00:00</field>
		<field name="story">KWCC was reborn as Synthespian Studios and continues to produce high-end computer graphic animation and visual effects.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">2</field>
		<field name="published">1</field>
		<field name="created">2012-08-16 16:15:19</field>
		<field name="modified">2012-08-16 16:16:55</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">104</field>
		<field name="title">Don't Touch Me</field>
		<field name="story_type_id">3</field>
		<field name="date">1989-01-01 00:00:00</field>
		<field name="story">In 1989, Hewlett Packard supported KWCCâ€™s next character Dozo in the ambitious â€œDon't Touch Meâ€. The 3 minute animation utilized early optical motion capture from Motion Analysis. Frank Vitz joined the team to wrangle the always late and always buggy motion capture data. After more than five months, only about 20% of the motion capture data was delivered, forcing KWCC to make very creative use of piecing together and repeating many short fragments of motion. The rendering was done all over the country, anywhere there was Wavefront rendering code. All the final imagery was output to big 9-track data discs and stacked 6 feet high, output to film and delivered to NY airport, picked up by an HP employee and handed into the SIGGRAPH office one minute before the midnight deadline for the Electronic Theatre submissions.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 16:18:59</field>
		<field name="modified">2012-08-16 16:19:01</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">105</field>
		<field name="title">Collaborations</field>
		<field name="story_type_id">3</field>
		<field name="date">1993-01-01 00:00:00</field>
		<field name="story">Two important television series were also created in conjunction with Santa Barbara Studios: â€œAstronomersâ€ with 12 minutes of cosmic simulation for PBS and â€œ500 Nationsâ€, where they built entire Native American cities.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 16:20:20</field>
		<field name="modified">2012-08-16 16:20:24</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">106</field>
		<field name="title">Getting started ...</field>
		<field name="story_type_id">3</field>
		<field name="date">1987-01-01 00:00:00</field>
		<field name="story">Diana and I formed KWCC to build databases using her sculptures and a 3D digitizer by Polhemus. Soon we were approached by Viewpoint who wanted to market our data along with theirs, and we were more interested in developing Synthespians than database service market.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">97</field>
		<field name="published">1</field>
		<field name="created">2012-08-16 16:22:26</field>
		<field name="modified">2012-08-16 16:22:30</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">107</field>
		<field name="title">Pen plotter output</field>
		<field name="story_type_id">3</field>
		<field name="date">1986-01-01 00:00:00</field>
		<field name="story">Output was on an HP plotter, hooked up to an SGI 3130. (A machine with only 4 megs of ram that cost $42,000 US!) The unique hybrid 3D/cel technique was used for the first time with futuristic motorcycles in the short-lived TV series UltraCross. (The show was canceled when the toy deal fell through.) 
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 16:26:45</field>
		<field name="modified">2012-08-16 16:26:48</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">108</field>
		<field name="title">Technological Threat</field>
		<field name="story_type_id">3</field>
		<field name="date">1988-01-01 00:00:00</field>
		<field name="story">With the method proven, and the time to spare, Kroyer and his team next produced the short film Technological Threat in 1988. The film realized the conflict and resolution of a traditionally animated character with that of a computer generated one. Great story telling, design and execution added up for an Academy Award-nomination for the film that year.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 16:27:36</field>
		<field name="modified">2012-08-16 16:29:20</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">109</field>
		<field name="title">FernGully: The Last Rainforest</field>
		<field name="story_type_id">3</field>
		<field name="date">1992-01-01 00:00:00</field>
		<field name="story">The full length animated feature film FernGully: The Last Rainforest was completed on February 10th, 1990. Besides being a very enjoyable film for both kids and adults, the project was notable for several reasons. Backed by the Australian team that had made â€œCrocodile Dundeeâ€, the entire production was accomplished in just two years from storyboards to premier. Kroyer ramped up from 15 to 200 people and in addition created 40,000 computer plotted cel frames to augment the bulk of the traditional animation. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-16 16:31:18</field>
		<field name="modified">2012-08-16 16:31:21</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">110</field>
		<field name="title">FerGully factoid</field>
		<field name="story_type_id">3</field>
		<field name="date">1992-01-01 00:00:00</field>
		<field name="story">One Ferngully scene in fact was done with digital-in-and-paint technology at Sidly-Rite(sp?) in Hollywood. The â€œsinging bat inside a treeâ€ scene was a feature film first to use this technique. (Disneyâ€™s â€œRescuers Down Underâ€ would come out the same year.)</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-16 16:32:12</field>
		<field name="modified">2012-08-16 16:34:00</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">111</field>
		<field name="title">The End</field>
		<field name="story_type_id">3</field>
		<field name="date">1994-01-01 00:00:00</field>
		<field name="story">Finally in 1994, studios began jumping on the feature animation bandwagon, but Kroyer by now had downsized considerably. Bill and Sue both decided to shut down their company and join the fledgling Feature Animation department at Warner Brothers for â€œQuest For Camelotâ€. While that partnership would not last because of creative differences, the Kroyers were able to freelance and develop their own film project. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-17 14:38:44</field>
		<field name="modified">2012-08-17 14:38:47</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">112</field>
		<field name="title">First Wavefront licence</field>
		<field name="story_type_id">3</field>
		<field name="date">1980-01-01 00:00:00</field>
		<field name="story">Lamb &amp; Company created some of the world's first flying logos when it acquired the first license of Wavefront software, allowing them to do production internally without relying on film or outside film support services. The Wavefront Preview software complemented their Oxberry equipment by allowing staff to previsualize the work being done on the computer controlled animation camera. This way of working was a 'preview' of the coming the shift to computer graphics in the industry at large. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-17 14:48:50</field>
		<field name="modified">2012-08-17 14:49:06</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">113</field>
		<field name="title">Cranston Csuri software</field>
		<field name="story_type_id">3</field>
		<field name="date">1985-01-01 00:00:00</field>
		<field name="story">About the same time, Larry bought the core animation technology developed at Cranston Csuri, one of a handful of 'original' computer animation companies that passed into history. This substantial body of 'prior art' in animation technology served as the basis for Lamb &amp; Company's internal development efforts. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-17 14:50:56</field>
		<field name="modified">2012-08-17 14:50:58</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">114</field>
		<field name="title">Lambsoft</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">In 1997, Lamb &amp; Company spun off LambSoft, a software technology development company whose goal is to productize motion editing and compositing software created as part of the company's long term efforts around blending motion capture with keyframe animation. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-17 15:24:19</field>
		<field name="modified">2012-08-17 15:24:22</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">115</field>
		<field name="title">1983 demo reel</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=V1NdUDfRqys</field>
		<field name="video">V1NdUDfRqys</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-17 15:33:13</field>
		<field name="modified">2012-08-17 15:33:20</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">116</field>
		<field name="title">From junkmail to Tron</field>
		<field name="story_type_id">3</field>
		<field name="date">1982-01-01 00:00:00</field>
		<field name="story">How the largest &quot;junkmail&quot; company in Westchester created TRON! In itâ€™s early days, MAGIâ€™s largest business was creating â€œjunk mailâ€ databases for direct mail and marketing uses. Three other divisions included: A CAD/CAM group which was very busy in manufacturing and defense contracts, Computer Slides Corp., which handled the presentation business projects; and the smallest of them all:  Synthavision</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-17 15:44:04</field>
		<field name="modified">2012-08-17 15:44:06</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">117</field>
		<field name="title">first raytraced image</field>
		<field name="story_type_id">3</field>
		<field name="date">1963-01-01 00:00:00</field>
		<field name="story">In fact, the very first raytraced image was produced in 1963, output on special test equipment (similar to an oscilloscope) developed at the University of Maryland. An â€œegg in a boxâ€ whose complex hidden surface problems were easily handled by the new raytracing technique. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-17 15:45:31</field>
		<field name="modified">2012-08-17 15:45:34</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">118</field>
		<field name="title">Solid modeling </field>
		<field name="story_type_id">3</field>
		<field name="date">1982-01-01 00:00:00</field>
		<field name="story">The software techniques were unique in their use of solid modeling techniques. Unlike all other systems, Synthavision used not polygons or patches but &quot;combinatorial geometry&quot; (boolean union, difference and intersection) of mathematically defined solid shapes such as cubes, cones and spheres. For example, a simple flying saucer would be modeled as the intersection of two perfect spheres, and a sphere would never suffer from low resolution straight edged profiles because it is defined mathematically perfect. The raytracing technique, originally developed by Bob Goldstein in the late 1960s, evaluated these boolean combinations once per ray. (the key paper was published in &quot;Simulation&quot; in 1968, and is referenced in Turner Whitteds 1981 SIGGRAPH paper which introduced raytracing to a much broader audience). The core math and physics developers at this stage included Herb Steinberg and Dr. Eugene Troubetskoy while Marty Cohen and Larry Elin (a non-scientist and Phil Mittlemanâ€™s son-in-law too) served in Executive Producer type roles. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-18 13:46:56</field>
		<field name="modified">2012-08-18 13:46:58</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">119</field>
		<field name="title">CE3K tests</field>
		<field name="story_type_id">3</field>
		<field name="date">1975-01-01 00:00:00</field>
		<field name="story">In 1975/76 Bo Gehring and others traveled to Hollywood to produce CG tests for Steven Speilberg film Close Encounters of the Third Kind. A film recorder was built by Carl Machover, one of the earliest of itâ€™s kind, it used a 9â€ CRT to expose the imagery onto 35mm film at 4000x2500 lines of resolution. Doug Trumbull also arranged to use a facility in Minniapolis to output to 65mm film. The intent was to realize the spaceships in the end landing sequence entirely with CG. In the end, Trumbull favored the traditional approach, and the CG tests were no longer pursued.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-18 13:48:04</field>
		<field name="modified">2012-08-18 13:48:07</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">120</field>
		<field name="title">pioneering filmout tech</field>
		<field name="story_type_id">3</field>
		<field name="date">1980-01-01 00:00:00</field>
		<field name="story">MAGI was a pioneer in putting high resolution computer graphics directly out to film. It's CELCO film recorder (way ahead of its time) was the second ever made. (The first being used by the government for Landsat imagery. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-20 16:59:24</field>
		<field name="modified">2012-08-20 16:59:27</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">121</field>
		<field name="title">Who's 'PDI' ??</field>
		<field name="story_type_id">3</field>
		<field name="date">1983-07-10 00:00:00</field>
		<field name="story">To relate an interesting perspective on the mind set of the time, in New York for the premier of Tron were all the computer graphics people who contributed to the film. From MAGI, Triple-I, Abel and Digital Effects all sitting around a table at Sardies. The topic of conversation soon center on the fact that the â€œentire CG business was sitting right hereâ€ and â€œhad anyone heard about some company trying to break in to the CG business in Californiaâ€¦they are going to call it Pacific Data Images or something like that..â€ â€œand how do they expect to get into such an established business as ours? Itâ€™ll never be successful.â€</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-20 17:11:27</field>
		<field name="modified">2012-08-20 17:12:30</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">122</field>
		<field name="title">Fun Fact!</field>
		<field name="story_type_id">3</field>
		<field name="date">1982-01-01 00:00:00</field>
		<field name="story">Shortly after Ken Perlin was hired I was hired into the CAD/CAM division to help build an interactive modeler for Synthavision's CSG (ray-traced boolean ops on quadratic solids) It was to be used by the movie division and sold toe the mechanical engineering market. This was an ambitious task given that all of the rendering and animation programs were still written in 80 column punched card format, compiled and run as &quot;batch jobs&quot; on IBM mainfraims and later on 32bit mini-computers and animation pencil tests were output to film and looked at on a upright Movieola, there weren't any frame buffer or color displays.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-20 17:15:02</field>
		<field name="modified">2012-08-20 17:16:50</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">123</field>
		<field name="title">Wild Things</field>
		<field name="story_type_id">3</field>
		<field name="date">1983-01-01 00:00:00</field>
		<field name="story">John Lasseter (Then a traditional animator at Disney) got his first exposure to computer graphics by working as the official Disney-Magi liason for a joint 1983 post-TRON test for &quot;Where the Wild Things Areâ€. Based on the popular childrens book by Maurice Sendak, the (60sec?) short had a young boy in his pajamas running with his dog up a flight of stairs. The characters were traditional cell animation and the environment was all 3D CG. Disney footed the bill for production, while MAGI paid for the substantial R&amp;D needed to create the hardware and software. Ken Perlin supervised and wrote code for the project. (which also included the now well known Disney animator Glen Keane). Jan Carlee and Chris Wedge modeled the environment and animated the camera move. Christine Chang wrote the digital â€œink and paintâ€ software that was used to color the Disney animators scanned in drawings complete with shadow and highlight elements. (A technique used much later to great effect at ILM in Who Framed Roger Rabbit.) Josh Pines built the scanner. This amazing project may have been the first ever example of full feature film resolution CG digital compositing. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 15:50:42</field>
		<field name="modified">2012-08-21 15:53:50</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">124</field>
		<field name="title">Brave Little Toaster</field>
		<field name="story_type_id">3</field>
		<field name="date">1983-01-01 00:00:00</field>
		<field name="story">An interesting side story that happened about this time concerned another Disney animation project. The Brave Little Toaster was being story-boarded by Lasseter and Jo Ramf(sp?), but when Ron Miller (then head of Feature Animation) was ousted, so was the project. For those of you who know the film (and if you have kids you should!) all the characters were household appliances, including a lamp, a radio, and a vacuum cleanerâ€¦all of whom would have been created in 3D CG by MAGI. However Tom Wilhite left Disney and formed Hyperion Animation in order to independently produce the film, and the MAGI work never was to be.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 15:54:59</field>
		<field name="modified">2012-08-21 15:55:01</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">125</field>
		<field name="title">Perlin makes some noise</field>
		<field name="story_type_id">3</field>
		<field name="date">1983-01-01 00:00:00</field>
		<field name="story">In 1983-84 at MAGI Ken Perlin developed his now famous â€œPerlin Noise and Turbulenceâ€ techniques of creating solid and procedural textures that are now commonly used everywhere in the CG industry. (It earned him an Academy Award for Technical Achievement in 1997 too). </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 15:57:15</field>
		<field name="modified">2012-08-21 15:57:16</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">126</field>
		<field name="title">'The Fly' on the wall </field>
		<field name="story_type_id">3</field>
		<field name="date">1985-01-01 00:00:00</field>
		<field name="story">Sythavision's work can be seen in David Cronenberg's, The Fly, where the main character, Seth Brundel plays a visual sequence on his computer that explains that his DNA has been mixed with a housefly. The work is not credited in the film.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 15:59:12</field>
		<field name="modified">2012-08-21 15:59:13</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">127</field>
		<field name="title">Buyout and new owners </field>
		<field name="story_type_id">3</field>
		<field name="date">1984-01-01 00:00:00</field>
		<field name="story">The Synthavision division was sold off in 1984 to a holding company in Toronto Canada run by Bob Robbins and Leo Grey. The companyâ€™s new president was David Boyd Brown(Blue Sky). 
The first main project for Synthavision after the by-out was a laser video disk arcade game called Robot Rebellion which required the player to pilot a small LV1 robot to the core of a mining asteroid to overcome a mine full of crazed robots and booby traps and regain control of the colony by punching in a color code they learned along the way. Hazards included CG fire created with KPL(Ken Perlin Language) texture code.
The finished project had was shopped around to gaming companies like Bally and Atari, but unfortunately occurred as the downturn in arcade gaming began. Like many other computer graphic production companies of the 1980's, Sythavision collapsed under the heavy overhead costs and enormous capital debt of the purchase of the technology. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:01:07</field>
		<field name="modified">2012-08-21 16:01:09</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">128</field>
		<field name="title">Scrubbing Bubbles curse!</field>
		<field name="story_type_id">3</field>
		<field name="date">1986-01-01 00:00:00</field>
		<field name="story">The very last project that Sythavision did was a commercial featuring DOW Chemical's Scrubbing Bubbles in their first CG incarnation. These, I'm told, are the same characters that Cranston/Csuri where working on when they folded later. We all watched PDI with interest when they took on Scrubbing Bubbles. Fortunately they survived the curse.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:02:35</field>
		<field name="modified">2012-08-21 16:02:36</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">129</field>
		<field name="title">The End</field>
		<field name="story_type_id">3</field>
		<field name="date">1986-08-01 00:00:00</field>
		<field name="story">Synthavisionâ€™s parent company went out of business in the fall of 1986. Arcca was the reformation of Sythavision staff and software to do the Captain Power television series for Landmark Entertainment. 
The CAD/CAM division of Magi had been sold to Lockheed Aerospace in 1982/83, while MAGI Computer Slides Corp. was purchased in 1986 from MAGI for $4million and renamed MAGICorp.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:03:43</field>
		<field name="modified">2012-08-21 16:03:49</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">130</field>
		<field name="title">The End</field>
		<field name="story_type_id">3</field>
		<field name="date">2007-12-01 00:00:00</field>
		<field name="story">Mental Images was acquired by NVIDIA in December of 2007.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:11:51</field>
		<field name="modified">2012-08-21 16:11:52</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">131</field>
		<field name="title">1991 Demo Reel</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=5ZDSAHHg1Co</field>
		<field name="video">5ZDSAHHg1Co</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:16:04</field>
		<field name="modified">2012-08-21 16:16:06</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">132</field>
		<field name="title">Stimpy you FOOL!</field>
		<field name="story_type_id">3</field>
		<field name="date">1992-01-01 00:00:00</field>
		<field name="story">A little known fact is that MetroLight also created 3D effects for several Ren &amp; Stimpy episodes. In one scene, George Liquor sees Ren through a pet store window which was rendered in 3D with reflections and refractions. Another 3D effects included a full blown snowstorm effect. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:17:53</field>
		<field name="modified">2012-08-21 16:17:55</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">133</field>
		<field name="title">first hardware and software</field>
		<field name="story_type_id">3</field>
		<field name="date">1987-01-01 00:00:00</field>
		<field name="story">Initially new SGI 3130 computers were purchased for the new company, running software from a relatively new company called Wavefront. At this same time Robert Abel and Associates had just gone out of business with that companies landlord acquiring much of the production equipment upon its closing. MetroLight then purchased this gear for itself (which included Evans &amp; Sutherland computers, Mitchel cameras, motion control equipment, and other hardware.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:18:38</field>
		<field name="modified">2012-08-21 16:18:58</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg01.com</field>
	</row>
	<row>
		<field name="id">134</field>
		<field name="title">Fun Fact!</field>
		<field name="story_type_id">3</field>
		<field name="date">1987-01-01 00:00:00</field>
		<field name="story">Before MetroLight was chosen as the official name, it was originally called North Light Studios (until it was found that this name was already taken)</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:19:42</field>
		<field name="modified">2012-08-21 16:19:44</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">135</field>
		<field name="title">First job</field>
		<field name="story_type_id">3</field>
		<field name="date">1987-01-01 00:00:00</field>
		<field name="story">MetroLightâ€™s first job was a intro for National Geographic, Directed by Jeff Doud. The rendering was done at 1k at 1:1.33 aspect ratio for both film and television markets. Jeff was soon after hired to work at MetroLight as an Art Director, and then to Click3x in Atlanta. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:20:53</field>
		<field name="modified">2012-08-21 16:20:55</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">136</field>
		<field name="title">Total Recall </field>
		<field name="story_type_id">3</field>
		<field name="date">1989-01-01 00:00:00</field>
		<field name="story">For their first attempt at feature film work, MetroLight shared a Special Achievement Visual Effects Academy Award for 1989's Total Recall. The project required animating 3D CG &quot;skeletons&quot; in a life size walk-through X-ray machine. Initially an early optical motion capture system from Motion Analysis was tested on Arnold (complete with sticking ping-pong balls all over him!). Eventually though the problems with the system necessitated a backup plan. The rear camera used behind the X-ray in the motion capture set up was used to capture footage that was rotoscoped for the key frames used in the final character animation. Paul Verhoven, then new to CG technology was very accommodating to the MetroLight crew, although he vetoed the idea of putting muscles on the X-ray skeletons. The hope was that this would help to differentiate Arnolds large physique from the other â€œnormalâ€ sized human skeletons, but it was not to be.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:22:05</field>
		<field name="modified">2012-08-21 16:22:07</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">137</field>
		<field name="title">Fun Factoid! ( Total Recall )</field>
		<field name="story_type_id">3</field>
		<field name="date">1990-01-01 00:00:00</field>
		<field name="story">Although MetroLight was only acknowledged by company name in the films credits, Verhoven rewarded the company with allotments for additional personal credits in the video release. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:23:33</field>
		<field name="modified">2012-08-21 16:23:34</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">138</field>
		<field name="title">software update</field>
		<field name="story_type_id">3</field>
		<field name="date">1988-05-01 00:00:00</field>
		<field name="story">In May of 1988 MetroLight decided that it wanted a more robust rendering software solution than was provided by Wavefront at the time. Yung-Chen began work on the in-house code only to loose all his data four months later in a series of software backup failures. More for the better the second time around, the code (finished in spring of â€˜89) was fast, and enough to carry them until about 1991/92 when they began using Renderman. At this same time Alias was selling there product modularly and MetroLight decided on their superior modeling package rather than write their own code for this task. Alias animation eventually replaced Wavefront Preview, with Composer also being recently replaced with Chalice for compositing. Maya was also being introduced as the all around tool of choice, (Although Con Pederson was still using Abel software up until very recently :)</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:25:25</field>
		<field name="modified">2012-08-21 16:25:29</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">139</field>
		<field name="title">Two division</field>
		<field name="story_type_id">3</field>
		<field name="date">1987-01-01 00:00:00</field>
		<field name="story">From the very beginning, MetroLight had two separate divisions, each ultimately with about 65 employees. The main 3D production division, and MetroCel the 2D ink and paint division. Mits Kaneko actually directed the overall development of the 2D software, Mark Steeves ran the division and Charles Scalfani was the lead programmer. The â€œannieâ€ software was ready for production work by about 1991 and was used in such television shows as Ren &amp; Stimpy.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-08-21 16:26:20</field>
		<field name="modified">2012-08-21 16:26:55</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">140</field>
		<field name="title">&quot;Annie&quot; and &quot;7th Level&quot;</field>
		<field name="story_type_id">3</field>
		<field name="date">1994-01-01 00:00:00</field>
		<field name="story">In 1994 the MetroCel software â€œannieâ€ was sold to the interactive company â€œ7th Levelâ€, who were going public with the backing of a certain investment banker named Michael Milken.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:27:50</field>
		<field name="modified">2012-08-21 16:28:12</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">141</field>
		<field name="title">Special Venue</field>
		<field name="story_type_id">3</field>
		<field name="date">1990-01-01 00:00:00</field>
		<field name="story">Over the years MetroLight has also contributed to a number of large format films, including the Korean â€œStar Questâ€ (with DreamQuest providing practical effects) and an Imax Intel show. Two such large format projects are currently in production; one for a summer 1999 release in Universalâ€™s new Florida theme park, and another in Orlando for Sigfreid and Roy, produced by L Squared.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:29:11</field>
		<field name="modified">2012-08-21 16:29:12</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">142</field>
		<field name="title">First hardware and software</field>
		<field name="story_type_id">3</field>
		<field name="date">1980-01-01 00:00:00</field>
		<field name="story">In 1981 they had also just installed a computer animation system, which consisted of a Hewlett Packard desktop machine, programmed in Basic, which drove a plotter. The plotter had no pens - instead, it had a fibre-optic light source where the pen went - this was pointed at the camera film plane. The lens would open, a colored gel would rotate in front of the lens, and the plotter would draw a wire-frame layer directly onto the film emulsion. Then the color would change, and more lines would be drawn. Of course, this all took place in a black box. This multi-layered approach could take minutes to do a single frame. There was no way of knowing what you had until you unloaded it, took it to the labs, waited overnight, went back to the labs, brought it back, laced it up and viewed it on the Movieola.â€
The quality of the light was uneven, and the guy who helped build it spent a lot of time trying to control light intensity down fibre-optic cable. He was an Australian named was Mike Boudry, the later founder of CFC.â€</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:33:54</field>
		<field name="modified">2012-08-21 16:33:55</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">143</field>
		<field name="title">Ed, Alvy and David : first hardware and software</field>
		<field name="story_type_id">3</field>
		<field name="date">1974-01-01 00:00:00</field>
		<field name="story">Ed Catmull had just finished his Ph.D. at Utah and taken a job at a CAD/CAM company called Applicon. It was not a hard sell to get Ed to leave Applicon for NYIT however, so he and fellow Utah graduate Malcolm Blanchard packed their bags for New York. Alvy Ray Smith and David DiFrancesco (both fresh from Xerox PARC) joined the team a few months later in what was called the â€œGerry Mansionâ€. Alvy and David had heard of Dr. Schureâ€™s plans from  Martin Newell at Utah (whom Alex had just hired briefly as a consultant). Dr. Schure had recently come through Utah and literally ordered â€œone of everythingâ€ to jump start his NYIT project. Some of this equipment included a DEC PDP-11, a new E&amp;S LDS-1 and the first random access frame buffer also from E&amp;S. Later, the CGL group would also receive the very first commercial VAX</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:39:04</field>
		<field name="modified">2012-08-21 16:39:18</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">144</field>
		<field name="title">Fun Factoid! ( VAX almost smashed! )</field>
		<field name="story_type_id">3</field>
		<field name="date">1975-01-01 00:00:00</field>
		<field name="story">VAX ALMOST SMASHED! In fact, the VAX almost never made it inside the building, if not for Alvy Ray Smithâ€™s quick actions. It seems that when the computer was just lowered off the back of the delivery truck, another truck parked behind and uphill had itâ€™s brakes slip, which started it rolling towards the brand new machine. Alvy quickly jumped in the driver-less truck and stopped it just before it could smash the VAX back into the very truck it was just unloaded from.  </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:39:55</field>
		<field name="modified">2012-08-21 16:40:11</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">145</field>
		<field name="title">Notable &quot;firsts&quot;</field>
		<field name="story_type_id">3</field>
		<field name="date">1975-01-01 00:00:00</field>
		<field name="story">The CGL quickly attracted other technology experts and artists, including Christy Barton(from E&amp;S), Tom Duff, Lance Williams, Fred Parke, Garland Stern, Ralph Guggenheim, Ed Emshwiller, and many others. 
Throughout the 1970s, the people of the CGL thrived in a pioneering spirit, creating milestones in many areas of graphic software. Many of the â€œfirstsâ€ that happened at NYIT were based on the development of the first RGB full color (24bit) raster graphics. 

A few of the more notable â€œfirstsâ€:
â€¢First RGB anything (because they had the first RGB framebuffers in the world).
â€¢First RGB paint program (Paint by Alvy Ray Smith).
â€¢First soft-edged fill (Alvy Ray again). 
â€¢First computer-controlled video editing. First TV 
commercial with raster graphics (Lance, I think, or maybe
it was Ephraim Cohen). 
â€¢First pixel dissolve. 
â€¢First networked computer system (Christy rolled our own for us). 
â€¢The alpha channel is invented by Ed Catmull and Alvy Ray Smith. 
â€¢First hidden surface algorithm within a pixel (Ed).
â€¢Lance Williams invented mipmapping (texture mapping is 
still done this way today). 
â€¢Garland Stern implemented the first scan and paint 
system (this is how the Disney/Pixar CAPS system now makes 2D animation - different system but same idea).
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:41:14</field>
		<field name="modified">2012-08-21 16:41:41</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">146</field>
		<field name="title">Strangest job title ever</field>
		<field name="story_type_id">3</field>
		<field name="date">1974-01-01 00:00:00</field>
		<field name="story">Alvy Ray Smith would later accidently come across an organization chart for the lab put together by Dr. Shure. Ed Catmull was running the lab of course but there where people listed above and below him that no one had even heard of. Alvy was particularly amused to find that his official title was â€œInformation Quantaâ€. A term very much in keeping with Dr. Shureâ€™s somewht unique, and non-standard form of communicating.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:42:27</field>
		<field name="modified">2012-08-21 16:42:52</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">147</field>
		<field name="title">2D was king</field>
		<field name="story_type_id">3</field>
		<field name="date">1975-01-01 00:00:00</field>
		<field name="story">Ed Catmullâ€™s Tween, Alvy Ray Smithâ€™s Paint program, and the 2D animation program SoftCel, all were in keeping with the original charter of the CGL, which was 2D CG. There were also many breakthroughs in image techniques involving fractals, morphing, image compositing, and Mip-Map texture mapping and many others. Key to this pioneering effort was the seemingly unlimited financing evidenced by Alex Schure. One such example took place when Alvy Ray Smith spoke with Alex about how good it might be to have not just the one, but three frame buffers. This way, Alvy explained, the three 8bit buffers could be combined to create the first RGB color frame buffer ever! Sometime later Alex not only delivered the two additional frame buffers, but an additional 3, which gave the CGL team a grand total of 6. (â€œEnough for two of those RGB thingsâ€ said Alex.) At $60,000 each (plus the $80,000 for the first) what this meant in todayâ€™s dollars was that on a simple request, Alex had just delivered about $2million worth of equipment.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:43:37</field>
		<field name="modified">2012-08-21 16:43:39</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">148</field>
		<field name="title">Summer intern</field>
		<field name="story_type_id">3</field>
		<field name="date">1976-07-01 00:00:00</field>
		<field name="story">Jim Blinn even worked at the CGL as a summer intern in 1976.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:46:05</field>
		<field name="modified">2012-08-21 16:46:06</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">149</field>
		<field name="title">Tubby The Tuba</field>
		<field name="story_type_id">3</field>
		<field name="date">1975-01-01 00:00:00</field>
		<field name="story">At this same time as the CGL was up and running, Alex had about 100 traditional animators working on a film called â€œTuby The Tubaâ€.  [ MORE INFO NEEDED ]</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-21 16:48:36</field>
		<field name="modified">2012-08-21 16:49:22</field>
		<field name="source_name">CG101: A Computer Graphics Industry Reference</field>
		<field name="source_url">www.cg101.com</field>
	</row>
	<row>
		<field name="id">150</field>
		<field name="title">Interview on the farm</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=_D-zPmlhlVE</field>
		<field name="video">_D-zPmlhlVE</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-29 09:25:29</field>
		<field name="modified">2012-08-29 09:25:31</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">151</field>
		<field name="title">The Spirit of Spawn</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?NR=1&amp;v=8_pqwk-WkBc&amp;feature=endscreen</field>
		<field name="video">8_pqwk-WkBc</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-29 11:52:48</field>
		<field name="modified">2012-08-29 11:52:50</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">152</field>
		<field name="title">The Abyss CGI demo</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.facebook.com/photo.php?v=496656927786</field>
		<field name="video"></field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-08-29 21:27:23</field>
		<field name="modified">2012-08-29 21:27:25</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">153</field>
		<field name="title">The beginning ... 1986-1989</field>
		<field name="story_type_id">3</field>
		<field name="date">1986-04-01 00:00:00</field>
		<field name="story">mental images was incorporated in April of 1986 by Rolf Herken with financial backing from private investors. The first generation of mental ray was begun initially by Robert Hodicke using one Solarity computer along with the first two SGI 3030's in Europe. Their initial commercial software used was the first Wavefront license in Europe.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 09:56:29</field>
		<field name="modified">2012-10-24 09:56:31</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">154</field>
		<field name="title">Softimage integration</field>
		<field name="story_type_id">3</field>
		<field name="date">1993-01-01 00:00:00</field>
		<field name="story">In 1993 mental ray and Softimage Inc. of Canada entered into a rendering technology agreement under the terms of which version 1.9 of mental ray was integrated into version 3.0 of Softimage|3D</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 09:59:23</field>
		<field name="modified">2012-10-24 10:00:03</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">155</field>
		<field name="title">Version 2.0 ... 1994-1998</field>
		<field name="story_type_id">3</field>
		<field name="date">1994-01-01 00:00:00</field>
		<field name="story">Version 2.0 was developed and led by project leader and software engineer Thomas Dreimeyer.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 10:03:54</field>
		<field name="modified">2012-10-24 10:03:56</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">156</field>
		<field name="title">Academy Award</field>
		<field name="story_type_id">3</field>
		<field name="date">2003-01-01 00:00:00</field>
		<field name="story">Mental Images was awarded an Academy Award in 2003 for their pioneering excellence in computer graphic software development. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 10:14:26</field>
		<field name="modified">2012-10-24 10:14:29</field>
		<field name="source_name"></field>
		<field name="source_url">www.mentalimages.com</field>
	</row>
	<row>
		<field name="id">157</field>
		<field name="title">animation systems </field>
		<field name="story_type_id">3</field>
		<field name="date">1972-01-01 00:00:00</field>
		<field name="story">Early animation language projects focused on a new concept of user friendliness termed &quot;habitability&quot; by Tom DeFanti. This was promoted as an interface to the real-time systems consisting of dials and joysticks. Some examples include : GRASS (Graphics Symbiosis System) animation programming language was written by Tom DeFanti in 1972; ANIMA motion language was written by Manfred Knemeyer in 1973; ANIMA II was developed with contributions from Ron Hackathorn, Alan Myers, Richard Parent, and Tim Van Hook and TWIXT designed by Julian Gomez as a &quot;track-based keyframe animation system.&quot;</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">88</field>
		<field name="published">1</field>
		<field name="created">2012-10-24 10:55:57</field>
		<field name="modified">2012-10-24 10:55:58</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">158</field>
		<field name="title">character animation</field>
		<field name="story_type_id">3</field>
		<field name="date">1985-01-01 00:00:00</field>
		<field name="story">A great many individuals at Ohio State created award-winning, character-based short animations including Tuber's Two Step by Chris (Blue Sky) Wedge and Snoot and Muttly by Susan Van Baerle and Doug Kingsbury.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">88</field>
		<field name="published">1</field>
		<field name="created">2012-10-24 10:57:56</field>
		<field name="modified">2012-10-24 10:57:57</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">159</field>
		<field name="title">Tuber's Two Step - 1985</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=k-GZ0PogVLw</field>
		<field name="video">k-GZ0PogVLw</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 10:58:28</field>
		<field name="modified">2012-10-24 10:59:46</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">160</field>
		<field name="title">Snoot and Muttly - 1984</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=3RlrtAf7Qsg</field>
		<field name="video">3RlrtAf7Qsg</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 10:59:34</field>
		<field name="modified">2012-10-24 10:59:35</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">161</field>
		<field name="title">The Advanced Computing Center for the Arts and Design (ACCAD)</field>
		<field name="story_type_id">3</field>
		<field name="date">1987-01-01 00:00:00</field>
		<field name="story">In 1987, Chuck Csuri and Tom Linehan (later President of the Ringling School of Design) converted the Computer Graphics Research Group into The Advanced Computing Center for the Arts and Design (ACCAD). With funding from a long-term Ohio Board of Regents grant, ACCAD was established to provide computer animation resources in teaching, research, and production for all departments in the College of the Arts at Ohio State. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">88</field>
		<field name="published">1</field>
		<field name="created">2012-10-24 11:04:32</field>
		<field name="modified">2012-10-24 11:05:37</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">162</field>
		<field name="title">Wayne Carlson</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://design.osu.edu/carlson/images/WayneCarlson.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 11:12:39</field>
		<field name="modified">2012-10-24 11:19:49</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">163</field>
		<field name="title">In the beginning ... </field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">In 1983, they installed a DEC VAX 11/750 and produced the first CG commercial in Canada. In 1983, an IPO (which raised $4.2 million) made Omnibus the first publicly traded CG company. The plan was to expand and operate three main facilities: Toronto, New York, and Los Angeles. The original Toronto location was for computer operations and for Canadian broadcast and agency work. Its production group was run by Dan Philips (later head of CG production at Dreamworks). The New York facility, for video broadcast and recording, was on 57th Street West under a lease from Unitel Video Inc. The Los Angeles location was intended primarily for motion picture film work. All three were linked by satellite by the end of 1984. (The satellite link amounted to modems for many months and finally a WAN that was painfully slow and unreliable.) As part of the initial expansion in mid-1984, several larger VAX 11/780 systems were installed at the Toronto facility.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 11:29:14</field>
		<field name="modified">2012-10-24 11:29:56</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">164</field>
		<field name="title">&quot;My first day on the job&quot;</field>
		<field name="story_type_id">3</field>
		<field name="date">1984-05-22 00:00:00</field>
		<field name="story">&quot;I remember walking in past reception to where the animators worked. There was Eric Ladd hunched over a massive drafting table. He was digitizing by hand the x, y, and z coordinates of a horse. Someone had drawn about five sectional slices of a horse on 4 foot by 3 foot graph paper, one slice per paper. Eric was calculating the x,y values from the grid and was writing down the coordinates on a piece of paper, later typing them in, manually creating several .ppt files. There was no digitizing tablet to be found anywhere. Later, on a tour of the edit suite, I saw Mike Johnson feeding paper tape containing the boot program through the ESS, a still store capable of holding 30 seconds of video on its RK05 disks.&quot;</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">187</field>
		<field name="published">1</field>
		<field name="created">2012-10-24 11:31:37</field>
		<field name="modified">2012-10-28 11:39:18</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">165</field>
		<field name="title">Omnibus LA</field>
		<field name="story_type_id">3</field>
		<field name="date">1985-01-01 00:00:00</field>
		<field name="story">Omnibus/LA (which was now majority-owned by Santa Clara-based Ramtek) hired David Sieg from Image West as VP of R&amp;D and a team of programmers from CalTech working with Al Barr, Brian Von Herzen, and many others. In addition to developing its own software (called Prisms), Omnibus obtained several exclusive software license agreements with Robert Abel &amp; Associates and Triple-I. (The deal with Abel originally was signed to last seven years, the Triple-I deal until the year 2001. This is a moot point given the abbreviated future of the companies.) To start up the Omnibus/LA facility, they bought the F1 computer system and older film printers (called PFRs) from Triple-I (which had just shut down their CG group) and started working out of the Triple-I offices in Culver City. Omnibus/LA soon moved to the Paramount Studios lot in Hollywood, sharing facilities with Unitel Video. Art Durinski was hired as Creative Director and staffed the initial dozen employees. Among these employees were a number of students from UCLA where he had been teaching.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 11:34:40</field>
		<field name="modified">2012-10-24 11:34:54</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">166</field>
		<field name="title">Star Trek III</field>
		<field name="story_type_id">3</field>
		<field name="date">1984-01-01 00:00:00</field>
		<field name="story">The first feature film contract  Omnibus worked on was for Paramount Pictures' Star Trek III. Omnibus (one of three companies to contribute effects) created a number of video graphics displays seen on the bridge of the Enterprise and Klingon starships. About 30 to 40 computer-generated video clips comprised almost an hour's worth of imagery. Artists included Technical Director Dan Krech and Animator Dan Philips.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 11:38:24</field>
		<field name="modified">2012-10-24 11:38:45</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">167</field>
		<field name="title">DOA</field>
		<field name="story_type_id">3</field>
		<field name="date">1986-06-01 00:00:00</field>
		<field name="story">In June of 1986, Omnibus bought Digital Productions. Omnibus was approached by the Digital Productioons majority owner Control Data, which was desperate to get out from under the increasing debt of DP. In September of that same year, Omnibus also bought Robert Abel &amp; Associates for $6.5 million. Abel likewise was on the verge of bankruptcy and was led to believe that Omnibus was a legitimate bid from a publicly held and stable company. The management at Omnibus saw the purchases as a way to consolidate the best of everything (and all their customers) into a single monolithic parent company. Unfortunately, nothing was as it appeared, as everyone soon found out.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 11:40:44</field>
		<field name="modified">2012-10-24 11:49:13</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">168</field>
		<field name="title">The work that could have saved us ..</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">&quot;The Omnibus management knew nothing about computer animation but kept muttering about 'Economies of Scale.' The reality was: three separate sales forces, three separate production crews, three separate facilities, philosophies, software systems, and hardware systems, none of which were likely to ever work together. What is ironic is that the next Star Trek movie was about to go into production and had tons of CGI work in it. We had good contacts with the right people, and we did some amazing tests (I have videotape!) of the Enterprise that blew the modelmakers away. But they were too scared Omnibus would go under to give us the contract that would have saved us.&quot; </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">106</field>
		<field name="published">1</field>
		<field name="created">2012-10-24 11:50:37</field>
		<field name="modified">2012-10-24 11:51:00</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">169</field>
		<field name="title">The End</field>
		<field name="story_type_id">3</field>
		<field name="date">1987-04-13 00:00:00</field>
		<field name="story">In early 1987, with a debt of about $25 million, Omnibus defaulted on investments and closed Abel, DP, and Omnibus on April 13, 1987.

An Omnibus Japan still exists today and uses the 3D Omnibus orb logo. www.omnibusjp.com </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 11:58:39</field>
		<field name="modified">2012-10-24 11:58:41</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">170</field>
		<field name="title">Side Effects birth </field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Kim Davidson and Greg Hermanovic purchased the rights to the Prisms source code and started Side Effects Productions, which later became Side Effects Software.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 11:59:31</field>
		<field name="modified">2012-10-24 11:59:33</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">171</field>
		<field name="title">Chromosaurus - 1985</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=HOUYSLStGak</field>
		<field name="video">HOUYSLStGak</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:10:57</field>
		<field name="modified">2012-10-24 12:11:00</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">172</field>
		<field name="title">in the beginning ...</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">The first PDP-11/44 was used for programming much of the original proprietary code written by Richard and Glenn (and Carl, too). Richard concentrated on the renderer and later on lighting tools. A DeAnza framebuffer also was used early on. Their very first jobs were doing broadcast graphics for Jose Diaz of Brazilian Globo Television.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:12:55</field>
		<field name="modified">2012-10-24 12:12:57</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">173</field>
		<field name="title">commercials .. good business sense</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">By the late 1980s, PDI was using Ridge UNIX workstations (similar to those by Solarity) and controlled about 60 percent of the high-end commercial broadcast market. Clients included virtually every network and cable channel along with hundreds of affiliate local stations. From the very beginning, it was clear that PDI (and Carl, in particular) had a uniquely keen business savvy that enabled the company to thrive through a time when CG company bankruptcies otherwise were the norm. At least two key strategies were instrumental to PDI's continued financial success. First, unlike most companies that were going heavily into debt to finance &quot;glamorous&quot; feature film work, PDI concentrated through the 1980s on the lucrative commercial market. Their early reputation in broadcast graphics work made the transition to film work easy. The second important factor that kept the books in the black was the wise decision to purchase and use &quot;last year's&quot; models of computer equipment and to depreciate it in just a few short years.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:14:17</field>
		<field name="modified">2012-10-24 12:14:19</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">174</field>
		<field name="title">Opening the LA office</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">In 1990, however, PDI opened a feature film production office in LA for work on its first film project, the Japanese-funded Solar Crisis. New equipment included a film scanner built by none other than Les Dittert and a Management Graphics film recorder. (The effects work was optically composited.) 
Work continued on many feature films including T2 and  several Batman films. In 1994, PDI closed the LA office, and several key employees (including Jamie Dixon and Thad Bier) stayed in LA to form HammerHead.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:15:38</field>
		<field name="modified">2012-10-24 12:17:39</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">175</field>
		<field name="title">Terminator 2</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Soon after opening the LA office, PDI got a big break with some lesser-known but still important work on Terminator2: Judgment Day. PDI did a number of different &quot;invisible&quot; effects such as wire removal and digital plate reconstruction.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:16:48</field>
		<field name="modified">2012-10-24 12:16:49</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">176</field>
		<field name="title">Early morphing success </field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Meanwhile, back at home base in Sunnyvale, PDI was continuing to set new standards in broadcast commercial CG techniques. In 1991â€“92 the technique of morphing was used with great success on numerous projects. The first was a Plymouth Voyager commercial, followed soon by the Exxon tiger and the famous Michael Jackson video &quot;Black or White.&quot; A perfect subject that was perfectly executed, the &quot;Black or White&quot; video only served to increase the demand for this new technology in broadcast work.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:20:14</field>
		<field name="modified">2012-10-24 12:20:35</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">177</field>
		<field name="title">early 3D character animation</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Along with the strong 2D effects work being produced, PDI also began very early to experiment and create 3D character animation. Waldo, the first ever 3D CG real-time animated &quot;muppet,&quot; was created for the Jim Henson Hour in 1988. The Crest Toothpaste &quot;Singers&quot; (1988) and DOW Scrubbing Bubbles (1989) commercials were followed by the Last Halloween television special in 1991 (based on the M&amp;M Mars candy commercial campaign started by ILM). In 1994, PDI broke a long-standing stop-motion tradition by introducing a 3D CG Pillsbury Doughboy with the &quot;Mambo&quot; spot. The Doughboy would in fact continue to be created by PDI for another four years. Gradually, more subtle enhancements crept into the spots including motion blur, which originally was intentionally left out to more closely resemble the look of stop-motion animation.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:21:57</field>
		<field name="modified">2012-10-24 12:22:21</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">178</field>
		<field name="title">first Dreamworks partnership</field>
		<field name="story_type_id">3</field>
		<field name="date">1996-03-01 00:00:00</field>
		<field name="story">The year 1995 saw Carl knocking on Hollywood studio doors again, this time with better results. In March 1996, PDI signed a co-production deal with Dreamworks to create the original computer-animated feature film Antz. The hugely successful Shrek (2001) was to be followed by Tusker before that project was canceled. Shrek 2 (2004) and finally Madagascar in 2005 were the companies last films to be produced under the PDI/Dreamworks moniker.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:23:28</field>
		<field name="modified">2012-10-24 12:23:30</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">179</field>
		<field name="title">short films</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">PDI always has gone beyond pure commercialism with its support of short animated films for their own sake. Some of the earliest memorable SIGGRAPH clips include Happy Drinking Birds, Chromosaurs, Opera Industrial, Cosmic Zoom, Burning Love, Max's Place, Locomotion, and Gas Planet. More shorts include Gabola the Great, Sleepy Guy and Fat Cat.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:24:13</field>
		<field name="modified">2012-10-24 12:24:16</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">180</field>
		<field name="title">Academy Award</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">In 1998, Richard Chuang, Glenn Entis, and Carl Rosendahl were awarded a Scientific and Technical Achievement Award for the concept and architecture of the PDI Animation System.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:24:51</field>
		<field name="modified">2012-10-24 12:24:51</field>
		<field name="source_name"></field>
		<field name="source_url"></field>
	</row>
	<row>
		<field name="id">181</field>
		<field name="title">The End (but not really)</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">By 2004 Dreamwork had acquired full ownership of PDI, LLC and now operates that campus as part of Dreamworks Feature Animation.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:28:12</field>
		<field name="modified">2012-10-24 12:28:13</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">182</field>
		<field name="title">How PIXAR got its name!</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Here is the story of how Pixar got its name: It was 1981 and the Computer Graphics Group at Lucasfilm was developing the hardware and software for a digital imaging &quot;scanning/manipulating/filming computer-machine.&quot; David DiFrancesco was the hardware guy, Loren Carpenter was the software guy, and Alvy Ray Smith managed the project. When it came time to write up a formal proposal about the new device, it seemed appropriate to come up with a catchy name for the middle component of the system, the computer that did the image processing between the scanning and the filming.
One night over dinner (at Franks Country Garden restaurant in Bel Marin Keys, California), four men got around to discussing the topic of a name. Present were Rodney Stock (a hardware consultant), Jim Blinn (who worked at Lucas for a short time), Loren Carpenter, and Alvy Ray Smith. Because the hope was for this clever device to actually &quot;make pictures,&quot; the name Picture Maker was suggested. This quickly was rejected in favor of Alvy's suggested contraction of Pixer. Loren then made the suggestion to change it to Pixar (it had a nicer ring to it), and the rest is history.
Loren relates that there occasionally are some attempts to put a greater meaning to the word after the fact (such as &quot;Programmed Image transformation[X] And Render&quot;) but the true story has now been told.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:38:19</field>
		<field name="modified">2012-10-24 12:38:21</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">183</field>
		<field name="title">The pixar image computer</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">In the first few years, the Pixar Image Computer sold well to a few (very different) client markets. For instance, Philips bought more than 20 systems to use in the medical image-processing market, and Disney made a significant partnership with Pixar to develop the graphics end of what would eventually become Disney's CAPS system. Roy Disney himself wanted to get his company back into feature animation in the right way, and this was seen (wisely) as an investment in the future technology of 2D animation production.
Ed Catmull and Pixar soon realized, however, that the 2D image-processing power of the Image Computer was not a moneymaker. They felt its days were numbered because of the ever increasing power and low cost of new general-purpose PCs. Ed chose, however, not to drop the hardware development business right away, mainly because the CAPS deal with Disney was entirely based on the Pixar Image Computer, and he did not want to leave them high and dry. Ed also knew it was only a matter of a time before they could port the CAPS development to the new SGI platform; it was just a matter of waiting it out while they continued to lose money. Just then, Ed received a call from one of their chief competitors in the image-processing market, a company called Vicom. Vicom was taking the position that to make that market more successful, all the competitors should join forces with one product. &quot;Would Pixar be willing to sell their hardware outright to Vicom?&quot; Ed: &quot;Let me think about that and get back to youâ€¦&quot; (Ed smiles to himself). Ed happily sold the Pixar Imaging Computer hardware business to Vicom for $2 million, hoping that they could keep it as a viable product just long enough for the Disney CAPS system to transition over to SGI, which is exactly what happened.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:40:48</field>
		<field name="modified">2012-10-24 12:40:50</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">184</field>
		<field name="title">the pixar image computer</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://s7.computerhistory.org/is/image/CHM/102621974p-03-01?$re-zoomed$</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:42:40</field>
		<field name="modified">2012-10-24 12:42:42</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">185</field>
		<field name="title">early commercial work</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">About 1990 or so the Commercial Division was started to cut some teeth on real production experience. The Listerene, Life Savers, and Tropicana spots immediately stood out as being in a creative class by themselves. Produced in conjunction with Colossal Pictures, they blended what was (and continues to be) Pixar's trademark realistic rendering &quot;look&quot; with outstanding character animation and humor. It was at this time that Andrew Stanton and Pete Doctor joined the company as animators. The hope was to get the hang of commercial production and then step up to make a half hour television short film based on Tinny from the Tin Toy short film.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:44:20</field>
		<field name="modified">2012-10-24 12:44:22</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">186</field>
		<field name="title">'Toy Story' and the 3 picture deal with Disney</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">in 1991, Ed Catmull made a three-picture deal with Disney to create fully CG-animated films. Disney's point of view was that if Pixar was ready to commit to a half hour show, then doing an 85-minute feature film really shouldn't be that much of a stretch. (Yeahâ€¦ sure!) The first film, to be called Toy Story, was given a budget of only $17 million. Although the final cost was considerably more than that, it still was considerably less than the cost of a traditionally animated Disney feature film.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:45:55</field>
		<field name="modified">2012-10-24 12:45:56</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">187</field>
		<field name="title">'Toy Story' rendering power </field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Toy Story was rendered with a render farm consisting of some 300 Sun computers, each with roughly the processing power of one original Cray 1 Supercomputer. (A Bug's Life used 1,400 SUN computers, each with a processor upgrade that was three to four times faster than the ones used on Toy Story! You do the math.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:46:43</field>
		<field name="modified">2012-10-24 12:46:44</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">188</field>
		<field name="title">the early short films </field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">After AndrÃ© and Wally B. (1984), while still part of Lucasfilm, there was Luxo Jr. (1986), Red's Dream (1987), Tin Toy (1988), and Knick Knack (1989). More recent shorts include Geri's Game (1997), For the Birds (2000), Mikeâ€™s New Car (2002), Boundinâ€™ (2003), One Man Band (2005), Lifted (2006), Presto (2008), Partly Cloudy (2009), Day and Night (2010), La Luna (2011).</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 12:49:35</field>
		<field name="modified">2012-10-24 12:59:21</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">189</field>
		<field name="title">Pixarvision laser film recorder</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">David DiFrancesco culminated his 20 years of pioneering film-recording technology knowledge in 1998 into PixarVision, for which he was awarded an Academy Award in 1999. This laser-based recording system at the time was the finest and fastest in the world, operating with 35mm, 65mm, and VistaVision film stocks at between four and eight seconds a frame. The system was tested on Bugs, and saw full use on Pixar's next film Toy Story II. 

PixarVision Factoid! : Early problems with the PixarVision laser film recorder eventually were tracked down to the air-conditioning system that keeps Pixar's vast render farm cool. The AC system was so large that the vibrations caused the whole building to vibrate just enough to throw the delicate film recorder's quality off!</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 13:00:06</field>
		<field name="modified">2012-10-24 13:01:02</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">190</field>
		<field name="title">Point Richmond to Emeryville</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">In 1998 Pixar relocated south a dozen miles from Point Richmond, CA to a brand new campus in Emeryville. Shortly thereafter they released Monsters, Inc. in 2001.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 13:01:46</field>
		<field name="modified">2012-10-24 13:01:47</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">191</field>
		<field name="title">first real-time performance animation</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Brad previously (along with partner Michael Wahrman of deGraf/ Wahrman) had created the first real-time character performance, Mike the Talking Head, at Siggraph 1988. Brad also was part of the team that Jim Henson contracted at Digital Productions in 1988 to digitize Kermit the Frog. 

Moxy, the first-ever live 3D character for television, was created and originally produced by Protozoa's founders while at Colossal Pictures in 1993 (and later by Turner Productions). Turner also licensed Protozoa's Alive for the Cartoon Network.

Ziff-Davis Television bought Alive and Dev Null from Protozoa to co-host The Site on MSNBC. They produced more than 20 minutes a week for over a year, viewed by 55 million homes worldwide. This makes Dev easily the most widely seen virtual character in the world.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 14:14:17</field>
		<field name="modified">2012-10-24 14:15:57</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">192</field>
		<field name="title">Floops!</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Protozoa also created Floops, the first live 3D episodic cartoon, which has been published twice weekly on the Web for over six months using VRML 2.0 (Virtual Reality Modeling Language). Floops won Best of Show at the 1997 VRML Excellence Awards.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 14:16:59</field>
		<field name="modified">2012-10-24 14:17:01</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">193</field>
		<field name="title">The End</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Protozoa was sold in late 2000 to an internet startup company called Dreamtime which promptly when out of business. Since then Brad DeGraf has focused his attentions to a variety of media, technology and information based social programs.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 14:17:49</field>
		<field name="modified">2012-10-24 14:17:50</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">194</field>
		<field name="title">Floops - 1987</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.digitalpuppetry.com/articles/sg97/mc_puppetry.gif</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 14:20:26</field>
		<field name="modified">2012-10-24 14:20:28</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">195</field>
		<field name="title">Bill Kovacs</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://upload.wikimedia.org/wikipedia/en/3/3b/Bill_Kovacs_11-Sep-2002_at_Rezn8.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 14:24:16</field>
		<field name="modified">2012-10-24 14:24:19</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">196</field>
		<field name="title">in the beginning </field>
		<field name="story_type_id">3</field>
		<field name="date">1987-04-23 00:00:00</field>
		<field name="story">Their very first job (April 23, 1987) was a film project to realize the MGM/UA logo for that studio. This was especially unusual at a time when virtually all CG production work was for broadcast television. The following years were spent creating many different commercial and logo projects, starting with their second job for a New Zealand station.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 14:30:00</field>
		<field name="modified">2012-10-24 14:30:04</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">197</field>
		<field name="title">Flight of the Intruder</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">The year 1990 saw some incredible breakthrough work for the feature film Flight of the Intruder. Remember that, at the time, The Abyss had just come out a year before and T2 was still a year away (1991). R&amp;H created more than 30 full-daylight shots of photo-realistic aircraft, cluster bombs, and smoke[md]all with proprietary software. This was truly breakthrough work that unfortunately was not as recognized as it should have been because the film itself did poorly. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 14:31:05</field>
		<field name="modified">2012-10-24 14:31:07</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">198</field>
		<field name="title">early software code</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">With four out of the six original employees being code writers, the in-house software effort had begun from day one. Eventually, four main components were written: animation, modeling, rendering, and compositing. Before all the code was production-ready, however, Wavefront software was used based on an agreement John had made earlier with the company started by his former co-worker Bill Kovaks. While working at Bob Abel's on and off from 1976 to 1987, John had his own company called Motion Control Systems (MCS) with partner Jim Keating. Jim, at that time, wrote the model component of the Wavefront code. In exchange for sole rights to that software, Wavefront gave a number of licences to John's new company, R&amp;H. Bill Kovacs actually wrote his preview code while consulting for John's earlier MCS company, but he retained sole ownership of that software for himself.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 14:32:01</field>
		<field name="modified">2012-10-24 14:32:02</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">199</field>
		<field name="title">Academy Award for Babe</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Rhythm &amp; Hues' work on Babe won an Academy Award for best Visual Effects. VFX Supervised by Scott Anderson and VFX Produced by Nancy St. John.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 14:33:09</field>
		<field name="modified">2012-10-24 14:33:11</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">200</field>
		<field name="title">acquiring VIFX</field>
		<field name="story_type_id">3</field>
		<field name="date">1999-03-01 00:00:00</field>
		<field name="story">In March of 1999, R&amp;H bought the visual effects CG company VIFX (which was located just two blocks away in Hollywood) from Fox, which had also just recently acquired the company and briefly merged it with Blue Sky. VIFX's founder and President Richard Hollander's new position is as head of the film effects group, bringing some 80 of VIFX's employees with the purchase. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 14:34:24</field>
		<field name="modified">2012-10-24 14:34:25</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">201</field>
		<field name="title">Larry Cuba visit</field>
		<field name="story_type_id">3</field>
		<field name="date">1976-01-01 00:00:00</field>
		<field name="story">Larry Cuba joined RAA for a short time at the start of 1976, hoping to program the new motion-control computers. He left just four months later, however, to create the famous Death Star graphics for George Lucas' Star Wars.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 16:51:51</field>
		<field name="modified">2012-10-24 16:51:52</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">202</field>
		<field name="title">Star Trek The Motion Picture .. almost</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Abel assembled a team to work on Star Trek: The Motion Picture, but the work eventually was discontinued at Abel's and was completed by Doug Trumbull and others.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 16:52:56</field>
		<field name="modified">2012-10-24 16:52:57</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">203</field>
		<field name="title">early crew and motion control </field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Among Abel's early associates were Richard Hollander, John Hughes, Richard Taylor, and Wayne Kimall. By 1979, Abel's was a full-service effects company with a miniature shop and six different motion-control rigs to augment live-action footage. A real breakthrough came when they wanted to have a way to preview motion control moves. To this end, Bill Kovacs was hired to modify an E&amp;S real-time vector PS-2 flight simulation computer. A deal was made to acquire the source code for the $100,000 machine in exchange for promising to E&amp;S that Abel's would not go into the flight simulator business. Eventually, with new employee Ray Feeney's help, the resulting &quot;Abel/Kovaks box&quot; drove six axes of movement in both the camera and the motion controlled object for virtually unlimited range of motion combinations.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 16:54:01</field>
		<field name="modified">2012-10-24 16:54:03</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">204</field>
		<field name="title">Abel Image Research - software</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">RAA sold its own software under the division Abel Image Research. Bill Kovacs left to found Wavefront, and Frank Vitz took over his job as head of R&amp;D at Abel's. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 16:57:46</field>
		<field name="modified">2012-10-24 16:57:49</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">205</field>
		<field name="title">The Black Hole</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Disney awarded a CG effects job for the film The Black Hole to an independent company called Neo Plastics, which was run by C.D. Taylor and Mick Hagerty. They, in turn, hired John Hughes to create a vector graphics grid/black hole simulation. John rented Abel's E&amp;S system and shot the images off the screen, optically compositing the CG with artwork and additional traditional animation. Unfortunately, once he had the job, he also realized that he had to deliver it in a mere 14 days. Not only did John actually finish the job in just nine days, Disney liked it so much they had him repeat the effect for the film's opening sequence and one-sheet poster.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 16:59:32</field>
		<field name="modified">2012-10-24 17:00:10</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">206</field>
		<field name="title">Tron - opening credits</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Kenny Merman and Frank Vitz headed the team that produced the opening titles and &quot;Flynn's Ride&quot; sequences of the movie Tron.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 17:00:43</field>
		<field name="modified">2012-10-24 17:00:46</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">207</field>
		<field name="title">The End  (DOA)</field>
		<field name="story_type_id">3</field>
		<field name="date">1987-04-13 00:00:00</field>
		<field name="story">At its peak, RAA occupied some 45,000 square feet and employed 240 people. With the best of intentions, Robert Abel &amp; Associates was sold in September of 1986 to Omnibus Computer Graphics of Canada for $6.5 million. The hope was to gain much needed capital investment from an established, publicly traded company. As soon as January of 1987, it was clear that all was not right with the new parent company. Sure enough, on April 12 of that year, all the Omnibus people left en mass in the evening. The next day, with word that Omnibus had defaulted on mountains of dept, all of Abel's had one last party before packing up for good.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 17:02:15</field>
		<field name="modified">2012-10-24 17:02:16</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">208</field>
		<field name="title">Brilliance (Sexy Robot) - 1985</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=hl2lhtBIt2E</field>
		<field name="video">hl2lhtBIt2E</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 17:04:24</field>
		<field name="modified">2012-10-24 17:04:26</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">209</field>
		<field name="title">Abel 1982 demo reel</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=cT3_3d2JcR0</field>
		<field name="video">cT3_3d2JcR0</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-24 17:05:22</field>
		<field name="modified">2012-10-24 17:06:33</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">210</field>
		<field name="title">changing with the times</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">The Los Angeles production office, run by George Joblove (ILM) and Ellen Sumers (Boss Film), and RG/LA operated for a few years in the mid-1990s. In 1999 the company decided to focus solely on interactive projects. Aquired first by True North (1995) which was then acquired by Interpublic (2000). R/GA today promotes itself as the â€œadvertising for the digital ageâ€. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 09:32:14</field>
		<field name="modified">2012-10-25 09:32:15</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">211</field>
		<field name="title">really big pixels</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Large format work has include the 70mm 3D film Shooting Star and IMAX space films Destiny In Space and Cosmic Voyage.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 09:38:30</field>
		<field name="modified">2012-10-25 09:38:31</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">212</field>
		<field name="title">notable TV work</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Television series contributions include Other Worlds: A Tour of the Solar System and two collaborations with the Kleiser-Walczak Construction Company on The Astronomers and 500 Nations (the latter of which depicted beautifully realistic reconstructions of Native American cultures).</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 09:39:04</field>
		<field name="modified">2012-10-25 09:39:06</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">213</field>
		<field name="title">Feature film work</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Feature film work included An American Werewolf in Paris, Spawn, Star Trek: Generations, Star Trek: Insurrection and Supernova.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 09:40:43</field>
		<field name="modified">2012-10-25 09:41:35</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">214</field>
		<field name="title">The End</field>
		<field name="story_type_id">3</field>
		<field name="date">2002-09-01 00:00:00</field>
		<field name="story">The company apparently shut down after completing work on the film 'K-19: The Widowmaker' ... have to ask John Grower for details.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 09:42:19</field>
		<field name="modified">2012-10-25 09:58:54</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">215</field>
		<field name="title">Academy Award</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Greg Hermanovic, Kim Davidson, Mark Elendt, and Paul Breslin were presented with a 1998 Academy Scientific and Technical Achievement Award for the development of the procedural modeling and animation components of the Prisms software package.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 10:05:38</field>
		<field name="modified">2012-10-25 10:05:39</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">216</field>
		<field name="title">IRIS 1000</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">SGI produced its first computer, the IRIS 1000, in 1983 and went public in 1986. (IRIS stands for Integrated Raster Imaging System.) The first 1000 series workstations were really terminals because they required a VAX host.SGI then acquired both Alias and Wavefront in 1995 and Cray Supercomputers in 1996. Those where good times, but they would not last.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 10:18:57</field>
		<field name="modified">2012-10-25 10:19:08</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">217</field>
		<field name="title">SGI and Intel</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">In 1997, SGI announced a new joint effort with Microsoft and Intel to develop a next-generation processor line for its graphics workstations, a new SGI Intel/NT. Introduced in spring of 1999, the SGI 320 and 540 workstations were Windows NT-based and cost between $3,400 and $5,995. The 540 supported up to four Pentium II Xeon 450MHz processors and up to 2GB of graphics memory.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 10:19:48</field>
		<field name="modified">2012-10-25 10:19:50</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">218</field>
		<field name="title">James (Jim) Clark</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://s7.computerhistory.org/is/image/CHM/500004825-03-01?$re-inline-artifact$</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 10:32:27</field>
		<field name="modified">2012-10-25 10:32:31</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">219</field>
		<field name="title">Academy Award</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Dominique Boisvert, Rejean Gagne, Daniel Langlois, and Richard Laperriere were awarded a Scientific and Engineering Award from the Academy of Motion Picture Arts and Sciences in 1998 for the development of the Actor animation component of the Softimage computer animation system.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 11:37:29</field>
		<field name="modified">2012-10-25 11:37:31</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">220</field>
		<field name="title">The End ( as a company )</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Softimage was acquired by Microsoft in 1994 and was sold to Avid in June of 1998 for about $200 million, with the 3D animation assets being later sold in 2008 to Autodesk for a reported $35 million.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 11:40:57</field>
		<field name="modified">2012-10-25 11:40:58</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">221</field>
		<field name="title">Sogitec - 1984</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://histoire3d.siggraph.org/images/8/8c/Equipe-Sogitec-1984.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 11:45:46</field>
		<field name="modified">2012-10-25 11:46:06</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">222</field>
		<field name="title">The End</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Beginning in 1984, Sogitec had became a subsidiary of Dassault Aviation in France and is now involved in simulation but not in CGI directly.

In 1989 Xavier and Sogitec's animation component merged with Thompson Digital Images ( TDI ) to form a new company called ExMachina.

</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 11:48:55</field>
		<field name="modified">2012-10-25 11:54:49</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">223</field>
		<field name="title">TDI logo</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://histoire3d.siggraph.org/images/d/df/TDI-logo.png</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">0</field>
		<field name="created">2012-10-25 12:08:48</field>
		<field name="modified">2012-10-25 12:08:50</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">224</field>
		<field name="title">The End</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">The production division merged in 1989 with Sogitec to form Ex Machina. TDI (the software company) also was at one time half owned by IBM.
In 1990, TDI released the first versions of their software for the PC. The software division was then bought by Wavefront in 1993. Wavefront in turn was bought by SGI and merged with Alias.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 12:12:01</field>
		<field name="modified">2012-10-25 12:12:02</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">225</field>
		<field name="title">Explore</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Known particularly for their Explore - Interactive Photorealistic Renderer (IPR) interface, TDI even opened a sales branch called Rainbow Images in San Jose.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 12:12:54</field>
		<field name="modified">2012-10-25 12:12:56</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">226</field>
		<field name="title">firsts in hardware</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Symbolics produced the first workstation that could genlock, the first to have real-time video I/O, the first to support digital video I/O, and the first to do HDTV.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 12:21:18</field>
		<field name="modified">2012-10-25 12:21:20</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">227</field>
		<field name="title">Symbolics Graphics Division</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">The Symbolics Graphics Division (SGB) was created by former members of Triple-I when that company ceased computer graphics production work in about 1981. Founded initially by Tom McMahon (General Manager from Triple-I), he soon was joined by Craig Reynolds, Dave Dyer, Larry Malone, Jeremy Schwartz, Larry Stein (hardware), and Bob Coyne (software). Matt Elson, Jay Sloat, and Ken Brain were artists, TDs, and trainers. Tom first worked out of the small Woodland Hills office, commuting often to the Massachusetts research center. Chatsworth was home for a short while before finally relocating to Westwood, California, in 1983.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 12:22:16</field>
		<field name="modified">2012-10-25 12:22:17</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">228</field>
		<field name="title">Stanley and Stella - Breaking the Ice</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">As many as 50 people worked on this memorable project and shared responsibility. Some key people included Phillipe Bergeron (animation), Joseph Goldstone, Kevin Hunter, Larry Malone, Craig Reynolds (flocking and schooling code), Jim Ryan, and Michael Wahrman (Producer). Richard &quot;Dr.&quot; Baily was hired by Michael Wahrman to model the two main characters based on sketches. He also composed and recorded the original soundtrack, which later was replaced by another one. It was a big hit at the 1985 SIGGRAPH in particular.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 12:23:03</field>
		<field name="modified">2012-10-25 12:26:49</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">229</field>
		<field name="title">more early employees </field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">SGD's first general manager was Howard Cannon from the Cambridge office, followed by Sheila Madsen, John Kulp, and then Tom McMahon. Tom went on to design most of the hardware and video systems for the company including all the framegrabbing, genlock, and high-definition capabilities that SGD pioneered with Sony and others.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 12:27:48</field>
		<field name="modified">2012-10-25 12:27:49</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">230</field>
		<field name="title">in-house tools</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">In-house tools included S-Geometry for modeling and S-Dynamics for animation. S-Paint was a LISP-based 32-bit paint system designed by Craig Reynolds, Tom McMahon, Bob Coyne, and Eric Weaver. 

After being sold to Nichimen in 1992 it is still available ( as of 2012 ) as Mirai from Izware.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 12:28:32</field>
		<field name="modified">2012-10-25 12:36:00</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">231</field>
		<field name="title">The End</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Around 1990, Symbolics started to fail and began to lay off employees. Even though SGD had a successful ongoing business with a good customer base, it still relied on its parent company for workstation and operating system technology as well as for other corporate infrastructure such as HR, finance, customer service, and so on.
Symbolics was sold to Nichimen in 1992, declared Chapter 11 bankruptcy in 1995 and was bought back by its original founder Russell Noftsker.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 12:33:58</field>
		<field name="modified">2012-10-25 12:33:59</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">232</field>
		<field name="title">inside story - by Tom McMahon </field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">&quot;Eventually, SGD was the target of a takeover and transition to Japanese management. SGD's Japanese distributor (Nichimen) had a thriving business based on the SGD product line of videographics hardware and the animation and rendering software. They couldn't afford to see us get blown away lest they be left without a source of supply. So they started buying up an insurance policy. They made Symbolics some offers it couldn't refuse given its poor financial health.
In a sequence of financial transactions, Nichimen bought rights to certain hardware technologies. They also started picking up the payroll for SGD employees in exchange for certain worldwide distribution rights. In the end, we had the people but Nichimen ended up owning most of our hard-earned technology.
We already had begun looking at how to port these tools off of Symbolics workstation platforms. SGI became the porting target. By 1991, we were well into the rewrite and port, but Symbolics needed to pull the plug on us.
I worked out a pretty amazing salvage deal with our old friends at Triple-I. I negotiated a contract where I could take all of SGD's key employees back to the employ of Triple-I but under a funding arrangement with Nichimen. Nichimen got their security blanket, and the employees kept their jobs. (A blanket layoff and the entire extermination of SGD were the alternatives at the time.)
At Triple-I, we proceeded to port all the SGD products to SGI machines, but things started going sour there, too.
We spun out of Triple-I and started yet another new company (with Nichimen seed funding) called Del Rey Graphics. Del Ray was co-founded by Al Fenaughty, President and CEO of Triple-I, along with Jack Holloway, one of the Foonly designers at Triple-I. But that didn't work due to a hostile takeover by Nichimen. My partners and I ended up selling the whole thing to Nichimen and what is left of this very long thread is now called Nichimen Graphics.&quot;
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 13:30:41</field>
		<field name="modified">2012-10-25 13:32:00</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">233</field>
		<field name="title">Obituary by Huw Jones</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">&quot;John Lansdown was Emeritus Professor of Computer Aided Art and Design and formerly Head of the Centre for Electronic Arts (formerly called the Centre for Advanced Studies in Computer Aided Art and Design) from September 1988 until July 1995 when he retired from full-time employment.
In 1968, he was one of the founders of the Computer Arts Society and was its honorary secretary for more than 25 years. He was engaged in using computers for creative activities (such as architecture, art, and choreography) since 1960 and wrote over 300 publications on computer uses in art and design.&quot; 
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 13:35:10</field>
		<field name="modified">2012-10-25 13:37:34</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">234</field>
		<field name="title">John Lansdown</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://upload.wikimedia.org/wikipedia/en/b/b2/LANSDOWN-John-1998-10-28.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 13:37:50</field>
		<field name="modified">2012-10-25 13:37:53</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">235</field>
		<field name="title">Alien</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">SSL created the vector graphics for the Nostromo in Ridley Scott's 'Alien'</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 13:50:05</field>
		<field name="modified">2012-10-25 13:50:07</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">236</field>
		<field name="title">special display architectures </field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">&quot;In the mid-1970s, we developed the ZMP parallel processor for real-time display (25 frames per second) of color scenes for aircraft flight simulation. This architecture was patented.
In the early 1980s, we developed the color Quad-encoded display for instantaneous pan and detail-revealing zoom into images of 4k by 4k resolution displayed on a 512-line monitor. Overviews correctly showed subpixel data as anti-aliased averages. The same system could also be used to reveal different symbology at different levels of zoom. As far as we are aware, it was the first display system to achieve either of these. The hardware required to do this was carefully chosen and designed but quite modest.&quot;
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 13:58:27</field>
		<field name="modified">2012-10-25 13:58:33</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">237</field>
		<field name="title">very high resolution image manipulation</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">&quot;We have a long history of working with pictures of very high resolution. In 1983, we completed a paint program for the binary Perq display, which offered a roamable drawing area of approximately 7000 by 7000, displaying a 640 by 640 subset.
We moved on to use the HLH Orion UNIX workstation's new color display (the design of which was in part influenced by us; we later took delivery of the preproduction prototype). With our own software, we produced what we believe to be the first color picture with a resolution of a billion pixels (32k by 32k) in about 1986.&quot;
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 14:00:25</field>
		<field name="modified">2012-10-25 14:00:26</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">238</field>
		<field name="title">in the beginning </field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">The EVL started its life in 1973 as Circle Graphics Habitat, part of the effort by then Vice Chancellor Joe Lipson to utilize interactive computer graphics and low-cost video (which had just become available) to make an impact on undergraduate education. This reflected a commitment to using technology in education and a belief in its transformative power, which have again become important in the '90s. The Lab's earliest home was in the Chemistry department, which already boasted the most advanced computer graphics available for state-of-the-art chemical modeling[md]a Vector General Calligraphic Display (PDP 11/45). The earliest goal was to develop computer-based introductory material for the chemistry curriculum with the basic premise that this would constitute a self-paced learning environment specifically designed for the varying entry levels of students at an urban university.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 14:07:47</field>
		<field name="modified">2012-10-25 14:07:49</field>
		<field name="source_name">EVL online database </field>
		<field name="source_url">www.evl.uic.edu/EVL/EVLLAB/history.shtml</field>
	</row>
	<row>
		<field name="id">239</field>
		<field name="title">Circle Graphics Habitat</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Circle Graphics Habitat brought together Tom DeFanti and Dan Sandin. The media development system they designed used DeFanti's Graphics Symbiosis System and the Sandin Image Processor. The Graphics Symbiosis System (GRASS) was a computer graphics language that DeFanti had developed for his Ph.D. thesis. The Sandin Image Processor was a patch-programmable analog video synthesizer. A combination of the two systems was the basis of a video production facility for the generation of educational materials. Sandin was a faculty member of the sculpture department, where he taught video and was involved with the making of electronically based, interactive, kinetic sculpture. Circle Graphics therefore also brought together chemists, engineers, and artists. An equally important early goal for the Lab was to use the systems created to make art. The GRASS and Image Processor systems were used to make real-time animations that were distributed on the experimental video circuit. The Lab also organized a series of Real-Time Interactive Installations and Performancesâ€”performance in the music tradition rather than in the newer sense of performance art.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 14:08:57</field>
		<field name="modified">2012-10-25 14:08:59</field>
		<field name="source_name">EVL online database </field>
		<field name="source_url">www.evl.uic.edu/EVL/EVLLAB/history.shtml</field>
	</row>
	<row>
		<field name="id">240</field>
		<field name="title">Star Wars - Death Star graphics by Larry Cuba</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">In 1976, Larry Cuba came to the lab to create his wireframe Death Star simulation for George Lucas' Star Wars film. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 14:10:18</field>
		<field name="modified">2012-10-25 14:11:54</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">241</field>
		<field name="title">The first Electronic Visualization Event</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">The first EVE (1973) event was actually an IEVEâ€”Interactive Electronic Visualization Event. The performers were faculty and students of Chicago Circle (UIC) and of the School of the Art Institute. The performances took place in the rotunda of the Science and Engineering South building. In the evenings, imagesâ€”manipulated using the GRASS system and analog processorâ€”were projected onto large video screens and shown on monitors to the accompaniment of live music.
&quot;Real time,&quot; with respect to these performances, meant that the images changed instantaneously as the controls were manipulated. In effect, the performers &quot;played&quot; both musical instruments and visuals. The performances were improvisational in a variety of musical styles. Preparation involved not only technical and programming issues but extensive jamming. The interactivity of Interactive Electronic Visualization Event was supplied during the day when the audience could come and play with the equipment. Subsequently, the &quot;I&quot; was dropped, and EVE2 and EVE3 continued as performances, which were interactive for the performers but not for the audience.
EVE1 was the prototype, establishing the possibility of such an event. EVE2 (1975) involved a lot more planning and quality control of content but was also held in the rotunda with live musical accompaniment. EVE3, in 1977, still emphasized the real-time possibilities of this medium. However, the performers felt that the logistics of organizing a complicated live performance and a large-scale physical event were beginning to interfere with aesthetic goals. Therefore, the performances were recorded in front of a small studio audience and were edited on a deck. The finished show took place in the auditorium of the First National Bank, and the computer graphics and sound were played back on a light-valve projector. By the end of the '70s, calligraphic systems were being replaced by raster graphics systems with framebuffering. Except in the video games industry, computer graphics became very static. The possibility of interacting in real time with graphics is only becoming a possibility in the '90s.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 15:27:25</field>
		<field name="modified">2012-10-25 15:27:27</field>
		<field name="source_name">EVL online database </field>
		<field name="source_url">www.evl.uic.edu/EVL/EVLLAB/history.shtml</field>
	</row>
	<row>
		<field name="id">242</field>
		<field name="title">Larry Cuba</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.well.com/~cuba/Lary.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 15:29:13</field>
		<field name="modified">2012-10-25 15:29:21</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">243</field>
		<field name="title">bio</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">While still a graduate student at The California Institute of the Arts, he was convinced of the artistic potential of computer graphics, but this was years before art schools began teaching the subject. Cuba's solution was to solicit access to the mainframe computers at NASA's Jet Propulsion Lab and teach himself computer animation by producing his first film, First Fig.

In 1975, John Whitney, Sr. invited Cuba to be the programmer on one of his films. The result of this collaboration was Arabesque.

Subsequently, Cuba produced three more computer-animated films: 3/78 (Objects and Transformations), Two Space, and Calculated Movements. These works were shown at film festivals throughout the world---including Los Angeles, Hiroshima, Zagreb and Bangkok---and have won numerous awards. Cuba's been invited to present his work at various conferences such as Siggraph, ISEA, Ars Electronica, and Art and Math Moscow and his films have been included in screenings at New York's Museum of Modern Art, The Hirshhorn Museum, The San Francisco Museum of Modern Art, The Art Institute of Chicago, The Amsterdam Filmmuseum and the Isetan Museum of Art, Tokyo.

Cuba received grants for his work from the American Film Institute and The National Endowment for the Arts and was awarded a residency at the Center for Art and Media Technology Karlsruhe (ZKM). He has served on the juries for the Siggraph Electronic Theater, the Montpellier Festival of Abstract Film, The Ann Arbor Film Festival and Ars Electronica.

In the pure form of abstraction that Cuba pursues, visual perception is paramount. But because the images are generated via algorithms written in computer language, there is a paradox in trying to use words to describe images for which words do not exist.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 15:31:02</field>
		<field name="modified">2012-10-25 15:31:05</field>
		<field name="source_name">Larry Cuba</field>
		<field name="source_url">http://www.well.com/~cuba/Biography.html</field>
	</row>
	<row>
		<field name="id">244</field>
		<field name="title">Calculated Movements - 1985</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=HcvN1dt0yJo</field>
		<field name="video">HcvN1dt0yJo</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 15:32:24</field>
		<field name="modified">2012-10-25 15:32:25</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">245</field>
		<field name="title">hidden surfaces</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">The number one problem of the day (according to Ed Catmull at least) was hidden surfaces. Many continually evolving algorithms, such as Watkins' algorithm (which subdivided the picture), were never actually implemented but served as inspiration for more practical solutions such as Catmull's more expensive techniques that actually subdivided surfaces. (This work was presented in his thesis work &quot;Characteristics of 10 hidden surface Algorithms&quot; in 1974.)
At the time, Ivan Sutherland did not like Catmull's &quot;brute-force&quot; approach, but the advent of much cheaper memory and storage made it extremely effective and increasingly practical. Indeed, it is just such a technique that is used as the basis for most all CG systems today. Catmull, as part of his interest in solving curved surface problems, had briefly attempted techniques of bending polygons before making his discovering of how to very efficiently and quickly subdivide cubic patches.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 15:48:30</field>
		<field name="modified">2012-10-25 15:48:41</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">246</field>
		<field name="title">Gouraud shading</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Henri Gouraud had been working for some time on linear interpolated shading when he visited Martin Newell and his brother in England who were working on similar research. A stumbling block with the early implementation was mach-banding artifacts, which also hindered the Newells. This allowed Gouraud to travel to Utah to finish his paper on &quot;Continuous Shading of Curved Surfaces&quot; in 1971.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 15:49:39</field>
		<field name="modified">2012-10-25 15:49:41</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">247</field>
		<field name="title">so many pioneers!</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Other important individuals at Utah over the years included Frank Crow, Fred Parke, Jim Blinn, Jim Clark, Lance Williams, Garland Stern, Ron Resch, Alan Kay, John Warnock, Patrick Baudelaire, Jim Kajiya, Christy Barton, Gary Watkins, and many others.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 15:50:47</field>
		<field name="modified">2012-10-25 15:50:48</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">248</field>
		<field name="title">the Newell Teapot</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://upload.wikimedia.org/wikipedia/commons/c/ca/Original_Utah_Teapot.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 15:55:15</field>
		<field name="modified">2012-10-25 15:55:17</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">249</field>
		<field name="title">Vertigo demo reel - 1990</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=QLQ-bYLCGog</field>
		<field name="video">QLQ-bYLCGog</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:00:33</field>
		<field name="modified">2012-10-25 16:00:34</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">250</field>
		<field name="title">Vertigo Production Company</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">The company was formed in 1979 in Vancouver, Canada. Vertigo began, unlike the startups that predominate our industry, as a company in a totally different field in search of solutions for which computer graphics was an excellent fit. Two real estate developers (Fred Daniels and Mike Parker) building prefabricated houses for the Asian market were looking for ways to communicate the complexities of assembling their product in the field in a clear, unambiguous way. Because their product sold into a variety of countries speaking different languages, a visual approach was ideal.
A video production group was formed, and the bold idea of harnassing computer graphics to demonstrate the assembly of their product was adopted. In those days, there were no off-the-shelf animation systems one could buy, and computers powerful enough to render were still in the $500,000 price range or higher.
By 1982, development had begun on a scanline polygon renderer written by Steve White from the University of British Columbia. (Later, Steve became software architect for the Neo-Visuals animation systemâ€”a turnkey computer animation system that debuted at SIGGRAPH 1985 and had the interesting quality of being written in Fortan.) The computer was a VAX-11/750 that was &quot;borrowed&quot; at night from a timeshare company two floors upstairs.
The company hired artists who had to learn computer graphics on the job. Very soon, the company began work on computer animations for the Canada-wide market such as flying logos for national ad campaigns, instructional videos, and a memorable 30-second flythough of Vancouver for a local radio station. Time was billed at $1,000/second of finished work, and the upstairs computer with 4MB of RAM was churning images on a nighly basis.
Vertigo employed many animators, many of whom are still active in the industry. Matt Arrott went on to Silicon Graphics and later became Director of Engineering for Dreamworks. Rod Paul went to Rhythm &amp; Hues and then DreamWorks. Kirk McInroy ended up at ILM. Nancy St. John (producer) went on to Digital Productions, ILM, and later worked on feature films such as Babe as an independent producer.
In 1983, Vertigo began development of a quadric surface constructive solid geometry renderer for its producton work. The interesting thing here is that the developer on this project, Dave Gordon, went on to Omnibus. (Later in 1988, the Omnibus software became the nucleus of the Side Effects animation system.)
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:02:39</field>
		<field name="modified">2012-10-25 16:02:40</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">251</field>
		<field name="title">Vertigo, Alias and Wavefront</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">During early 1985, Roy Hall was hired by the production group as a consultant. He wrote a polygon renderer and later became a member of the Wavefront development team. Several consultants (including Charles Poynton and Paul Fuscher) were hired to help with hardware layout. At SIGGRAPH 1985, Alias Research of Toronto unveiled a &quot;slidemaker.&quot; It really was just a renderer with the modeller and animation system promised &quot;shortly.&quot; Wavefront unveiled its offering, displaying PreView, their animation tool, but no renderer or modeller. Meanwhile, Vertigo had an extrusion modeller and a renderer but decided to wait and unveil the finished product when all the pieces were complete. The official unveiling was at SIGGRAPH 1986.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:05:20</field>
		<field name="modified">2012-10-25 16:05:22</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">252</field>
		<field name="title">early software development</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Design began in earnest in mid-1984 and development commenced in October of 1984. Under Bill Etra (who had developed numerous real-time graphics effect devices including co-development of the Rutt-Etra synthesiser used in 1977's Logan's Run), three development teams were set up. A turnkey software group was led by Rikk Carey (a rendering expert from Don Greenberg's group at Cornell), a hardware group was led by Tim Piper (who had worked on real-time flight simulator hardware), and an interfacing group was led by Doug Girling. Soon afterwards, Gary Hooper and John Gross joined Carey, and this threesome led the effort to design and build the Vertigo animation system.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:06:54</field>
		<field name="modified">2012-10-25 16:06:55</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">253</field>
		<field name="title">The End - and new beginning </field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">In 1987, however, Vertigo was running out of money, and sales were not yet strong enough to support the company. Things quickly unraveled, payroll was missed, the doors were shut, and the employees waited around to see what would happen. Surprisingly, the core engineering team stuck it out and eventually participated in the deal to be acquired by Cubicomp.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:08:27</field>
		<field name="modified">2012-10-25 16:08:30</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">254</field>
		<field name="title">some early employees</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Early employees included Fred Daniels, Mike Parker, Bill Diack (A|W), Tim Piper, Bill Etra (Sun), Rikk Carey (SGI), Gary Hooper (A|W), John Gross (PDI, A|W), Dave Dignam (SGI, Gigapixels), Mike Kelley (Apple, SGI), and Paul Wagschal. Other employees included Rod Paul (Omnibus NY, R&amp;H, Dreamworks), Floyd Gillis, Dave Gordon, Carl Frederick (OMNIBUS NY, then ILM), Matt Arrott, and Nancy St John.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:09:31</field>
		<field name="modified">2012-10-25 16:09:32</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">255</field>
		<field name="title">some &quot;firsts&quot;</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Company &quot;firsts&quot; included the first digital framebuffer, the first multiprocessing rendering system, the first complete 3D animation system, the first extrusion modeler, the first friendly 3D animation user interface, and the first integrated animation system.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:10:07</field>
		<field name="modified">2012-10-25 16:10:09</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">256</field>
		<field name="title">purchased by Cubicomp</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">In late 1987, Vertigo was purchased by the Cubicomp Corporation of Hayward, California. Cubicomp was founded in the early 1980s in a garage in Berkeley, California, by Edwin P. Berlin, Jr. to provide a turnkey computer animation system on an IBM personal computer. The Cubicomp product, called PictureMaker, featured polygonal modeling, scene choreography, and rendering at a much lower price point than on comparable workstation-based software systems. At the time of the aquisition, the combined installed based totalled some 750 units worldwide.
Vertigo moved from the historic Pender Street office to a new modern office in the West End of Vancouver. The team was reinvigorated by the new office, excitement, and owners and quickly got back on track.
In 1988, the Vertigo product was rewritten to take advantage of the new RISC-based workstations from SGI (the 4D series). All 3D modules of the system were integrated with new extended functionality and enhanced workflow was provided. A new hardware product providing D1 and D2 video support, the VideoPak (with development led by Dave Dignam), was released. Boolean modeling and ray tracing were added in 1989. A notable advance for character animation purposes was the addition of free-form deformations that permitted animatable lattice deformations to be applied to static or animated objects. In addition to bend and twist deformations, the lattices also permitted arbitrary animation of lattice points to enact simple muscle bulging.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:12:10</field>
		<field name="modified">2012-10-25 16:12:12</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">257</field>
		<field name="title">Vertigo AFTER Cubicomp</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">In 1990, out of the ashes of Cubicomp, a couple of ex-Vertigo employees and a group of investors purchased the code. With little money and little experience, this team managed to finish the next release of code, which sold well. Existing Vertigo users, fearing that this would be the last cut, bought up the software. Surprised by its success, the team then continued to expand and rebuilt the company. For a number of years the successes continued, as did the releases of versions. New features were added, and the team grew back to the size it was in the early days. In 1993, the decision was make to ditch the old renderer in favor of supporting the industry standard RenderMan. The team undertook this directly, creating a seamless link to RenderMan. An interface was created to allow easy interactive editing of shaders and renders to RenderMan without writing out the usual ASCII RIBs. Finally, this enabled Vertigo to break into the film market. Disney BVVE took the system along with a great deal of support from Vertigo. This relationship grew into Vertigo eventually producing shots for Disney movies in Vancouver. Even with this success and turning into a public company, Vertigo again began to run short of cash and lost its capability to compete with teams such as Softimage and Alias|Wavefront. In a final attempt to get out of the way of these bigger competitors, the team started to move the entire development to the Mac using Apple Quickdraw3D, at the same time spinning off smaller components into 2D applications such as Photoshop and Illustrator. Vertigo still exists and still functions on the SGI. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:13:27</field>
		<field name="modified">2012-10-25 16:15:58</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">258</field>
		<field name="title">The End - for real this time</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Unfortunately since 1997 the flagship 3D animation product was discontinued in favor of developing 3D plug-ins for Adobe Illustrator and Photoshop. However in 2002 the intent was announced to once again market Vertigo 9.6 for the SGI. In June of 2002 Vertigo Software began its acquisition of Digital Accelerator Corporation (also of Vancouver, BC) whoâ€™s marketing efforts focus on still and video compression technology. Vertigo Software Corp. completed its reorganization in 2003, including the re-branding of â€œDaccelâ€ to Even Technologies. Sadly, the company apparently ceased operations as of July 15,2005. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:16:51</field>
		<field name="modified">2012-10-25 16:16:53</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">259</field>
		<field name="title">'Night Cafe' - 1988</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Cubicomp submitted a version of Night Cafe, a computer-generated character animation piece (the one with the dancing salt and pepper shakers). This made it into the 1989 SIGGRAPH Electronic Theater. Night Cafe was put together by Sharon Calahan, an artist employed by the Vancouver office who now works at Pixar.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:19:19</field>
		<field name="modified">2012-10-25 16:19:45</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">260</field>
		<field name="title">Cubicomp / Vertigo demo reel - 1990</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=2zW56z2q698</field>
		<field name="video">2zW56z2q698</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:21:36</field>
		<field name="modified">2012-10-25 16:21:38</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">261</field>
		<field name="title">Picturemaker training video - part 2 of 3</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=6fSZbJGWb0k</field>
		<field name="video">6fSZbJGWb0k</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:29:12</field>
		<field name="modified">2012-10-25 16:29:14</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">262</field>
		<field name="title">Picturemaker training video - part 3 of 3</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=u5d6bBTEoTM&amp;feature=relmfu</field>
		<field name="video">u5d6bBTEoTM</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:29:49</field>
		<field name="modified">2012-10-25 16:32:23</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">263</field>
		<field name="title">Picturemaker training video - part 1 of 3</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=U1FLlcAVy14&amp;feature=relmfu</field>
		<field name="video">U1FLlcAVy14</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:32:51</field>
		<field name="modified">2012-10-25 16:32:54</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">264</field>
		<field name="title">The Tainted Sky</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=K4iCdZtPCG4</field>
		<field name="video">K4iCdZtPCG4</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:53:18</field>
		<field name="modified">2012-10-25 16:53:20</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">265</field>
		<field name="title">Mike Zyda</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.usc.edu/dept/pubrel/trojan_family/summer05/GamePlan_files/5-1-05_Zyda.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 16:57:10</field>
		<field name="modified">2012-10-25 16:57:12</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">266</field>
		<field name="title">2010, digital composites, Bill &amp; Ted</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">The company's first job was to produce video display graphics for the feature film 2010: Odyssey 2. Virtually all the 3D CG in the early years was produced using Cubicomp equipment. Richard was inspired by a NASA/Kodak article about CCD technology and promptly designed and built a 1k by 1k input scanner for production use. The first digital composites it was used for were on the feature film Bill and Ted's Excellent Adventure in 1989.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 17:05:01</field>
		<field name="modified">2012-10-25 17:05:02</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">267</field>
		<field name="title">1990's film visual effects</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">In about 1990, the company began creating more ambitious motion picture visual effects and was then known as VIFX/Video Image. Feature film visual effects work for 20th Century Fox and other studios was wide-ranging and extensive. The work included Batman Returns, Mighty Morphin' Power Rangers, Down Periscope, Volcano, Face/Off, The X-Files, The Relic, Star Trek: Insurrection, Blade, and Pushing Tin.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 17:05:43</field>
		<field name="modified">2012-10-25 17:05:44</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">268</field>
		<field name="title">sold to 20th Century Fox</field>
		<field name="story_type_id">3</field>
		<field name="date">1996-01-01 00:00:00</field>
		<field name="story">VIFX was sold to 20th Century Fox in 1996, and partners Greg McMurry and Rhonda Gunner left the company.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 17:06:25</field>
		<field name="modified">2012-10-25 17:16:12</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">269</field>
		<field name="title">sold to Rhythm &amp; Hues </field>
		<field name="story_type_id">3</field>
		<field name="date">1999-03-01 00:00:00</field>
		<field name="story">In 1998, the Fox animation production Planet Ice was changed from an all-3D CG feature to being traditional cel animation. This left VIFX with an opportunity to sell itself yet again to Rhythm &amp; Hues in the spring of 1999. About 80 people, including Richard Hollander, transferred to the new company following the merger.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 17:07:49</field>
		<field name="modified">2012-10-25 17:16:01</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">270</field>
		<field name="title">purchase / merger of Blue Sky</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-08-01 00:00:00</field>
		<field name="story">In August of 1997 Fox/VIFX purchased Blue Sky Studios ( New York )</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">2</field>
		<field name="published">1</field>
		<field name="created">2012-10-25 17:17:22</field>
		<field name="modified">2012-10-25 17:17:45</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">271</field>
		<field name="title">Able Image Research software</field>
		<field name="story_type_id">3</field>
		<field name="date">1987-01-01 00:00:00</field>
		<field name="story">The company's first real competition came in 1987 with the advent of Robert Abel &amp; Associates' software division, Abel Image Research (AIR). This company, originally founded on a code base developed by Bill Kovacs, was started to capitalize on the momentum Wavefront was enjoying in the marketplace. This software was incomplete, undocumented, and very expensive, but AIR had the best marketing materials in the industry with an award-winning animation reel done by Robert Abel. Unable to compete against this body of work, a deal was struck in 1988 that had Wavefront purchasing the assets of AIR. The AIR software was never incorporated into the Wavefront code bases, even though urban myths have contrary opinions.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">251</field>
		<field name="published">1</field>
		<field name="created">2012-10-25 17:23:05</field>
		<field name="modified">2012-10-25 17:23:18</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">272</field>
		<field name="title">early funding and revenue</field>
		<field name="story_type_id">3</field>
		<field name="date">1994-01-01 00:00:00</field>
		<field name="story">The company originally was financed by the founders for the first year. Then it went through several rounds of venture funding, culminating in an IPO 10 years later in 1995. Initial revenues were in the several hundred thousand per year range and ended in 1994 with annual revenues around $26 million.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">251</field>
		<field name="published">1</field>
		<field name="created">2012-10-25 17:24:10</field>
		<field name="modified">2012-10-25 17:24:11</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">273</field>
		<field name="title">more funding partners and expansion </field>
		<field name="story_type_id">3</field>
		<field name="date">1995-01-01 00:00:00</field>
		<field name="story">The company went from three founders and four employees to 12, then 28, then 50, then 90, and then 160 at its highest point in the late '80s. Expansion into Europe happened in 1987 with the creation of Wavefront Europe, located in Belgium. At that time, the Belgian government also became an investor. The next year, concurrent with the AIR acquisition, Wavefront moved into Japan and then throughout the rest of Asia.
In the early '90s, a round of funding with CSK, a major Japanese computer company, resulted in the founding of Wavefront Japan, a wholly owned subsidiary. CSK at one time owned 14 percent of Wavefront.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">251</field>
		<field name="published">1</field>
		<field name="created">2012-10-25 17:25:04</field>
		<field name="modified">2012-10-25 17:25:07</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">274</field>
		<field name="title">acquisition of TDI</field>
		<field name="story_type_id">3</field>
		<field name="date">1993-01-01 00:00:00</field>
		<field name="story">In 1993, Wavefront entered into discussions to acquire another of the pioneering computer graphics companies, Thomson Digital Images (TDI). TDI had developed a similar set of technologies in modeling, animation, and rendering and had innovated in the area of NURBS modeling and interactive rendering. These technologies coupled with extensive distribution in Europe and Asia made for an ideal fit with Wavefront. The acquisition was treated more as a merger, but more than half the employees of TDI left immediately. It took nearly two years to blend the distribution channels in Europe and Asia because Wavefront had a toehold in those areas already. Fierce competition between the channels was clearly in play.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">251</field>
		<field name="published">1</field>
		<field name="created">2012-10-25 17:25:55</field>
		<field name="modified">2012-10-25 17:26:16</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">275</field>
		<field name="title">GameWare</field>
		<field name="story_type_id">3</field>
		<field name="date">1993-01-01 00:00:00</field>
		<field name="story">In 1993, the company entered the electronic game market with a repackaging of its core application, The Advanced Visualizer, into a tailored offering called GameWare. This bundle focused the marketplace on Wavefront for game development and was very successful. This effort lasted for one year until the merger of Alias and Wavefront, when the program was canceled so PowerAnimator could be sold to game developers instead.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">251</field>
		<field name="published">1</field>
		<field name="created">2012-10-25 17:27:09</field>
		<field name="modified">2012-10-25 17:27:11</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">276</field>
		<field name="title">Data Visualizer</field>
		<field name="story_type_id">3</field>
		<field name="date">1995-01-01 00:00:00</field>
		<field name="story">The original business plan talked about military, educational, medical, electronic game, simulation, film/entertainment, engineering, and product visualization marketplaces. The only one that never materialized was the simulation market. The company expanded into the scientific market in the late '80s with a product called The Data Visualizer. This product, aimed at nonpolygonal databases, was a success until Silicon Graphics and IBM developed competing products that were offered for free in bundles to sell high-end server hardware into the scientific marketplace. The Data Visualizer built on Wavefront's reputation for open systems and fast graphics interaction.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">251</field>
		<field name="published">1</field>
		<field name="created">2012-10-25 17:28:30</field>
		<field name="modified">2012-10-25 17:28:31</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">277</field>
		<field name="title">Personal Visualizer</field>
		<field name="story_type_id">3</field>
		<field name="date">1995-01-01 00:00:00</field>
		<field name="story">The company made one foray into the desktop marketplace with a project co-developed by Silicon Graphics called The Personal Visualizer. This product was created to give CAD users a point-and-click interface to high-end photorealistic rendering. Initially targeted to SGI hardware, the product eventually was ported to Sun, IBM, HP, Tektronix, DEC, and Sony platforms. The strategy was to bundle the software on every system sold and then follow with module sales into the installed base.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">251</field>
		<field name="published">1</field>
		<field name="created">2012-10-25 17:29:26</field>
		<field name="modified">2012-10-25 17:29:28</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">278</field>
		<field name="title">major customers</field>
		<field name="story_type_id">3</field>
		<field name="date">1995-01-01 00:00:00</field>
		<field name="story">In the film market, Disney was the premier customer along with Warner Digital and Boss Film (both now defunct), Industrial Light &amp; Magic, Film Magic (Hong Kong), TRIX (Belgium), and Electronic Arts (London). In video production, NBC, CBS, ABC, and CNN (Turner Broadcasting) were the premier partners. In engineering visualization, there was Harvard, National Center for Atmospheric Research (NCAR), NASA (six locations), Alcoa, and the National Center for Supercomputing Applications (NCSA). The military visualization marketplace included the CIA, FBI, Naval Surface Warfare Center, U.S. Air Force, and the National Security Agency. At the high point, there were nearly 8,000 Advanced Visualizer users.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">251</field>
		<field name="published">1</field>
		<field name="created">2012-10-25 17:30:05</field>
		<field name="modified">2012-10-25 17:30:16</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">279</field>
		<field name="title">ArcVision</field>
		<field name="story_type_id">3</field>
		<field name="date">1995-01-01 00:00:00</field>
		<field name="story">In early 1995, another effort was undertaken to capture the architectural market. ArcVision was designed to take existing CAD translation software and bundle it with preset color and environment controls, using IPR (Explore's renderer front-end) to offer a low-cost solution to small firms that wanted to experiment with different color and lighting schemes using existing CAD architectural databases. This project was terminated postmerger because the Alias management had bad experiences in this market with their Sonata purchase and did not believe the market was viable. It never really got off the ground because it was scheduled to be launched at Siggraph 1995.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">251</field>
		<field name="published">1</field>
		<field name="created">2012-10-25 17:32:05</field>
		<field name="modified">2012-10-25 17:32:06</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">280</field>
		<field name="title">Academy Awards</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">In 1998, a Scientific and Technical Achievement Award was awarded to Jim Keating, Michael Wahrman, and Richard Hollander for their contributions that led to the Wavefront Advanced Visualizer computer graphics system. Also in 1998, a Scientific and Engineering Award was presented to Bill Kovacs for his creative leadership and to Roy Hall for his principal engineering efforts that led to the Wavefront Advanced Visualizer computer graphics program.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">251</field>
		<field name="published">1</field>
		<field name="created">2012-10-25 17:33:18</field>
		<field name="modified">2012-10-25 17:33:19</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">281</field>
		<field name="title">triple merger</field>
		<field name="story_type_id">3</field>
		<field name="date">1995-06-01 00:00:00</field>
		<field name="story">In June of 1995, the merger of Alias Research, Wavefront, and Silicon Graphics was completed.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">251</field>
		<field name="published">1</field>
		<field name="created">2012-10-25 17:34:15</field>
		<field name="modified">2012-10-25 17:34:16</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">282</field>
		<field name="title">Stanley and Stella</field>
		<field name="story_type_id">3</field>
		<field name="date">1987-01-01 00:00:00</field>
		<field name="story">Their first project was to team up with fellow ex-Triple-I employees from the Symbolics Graphics Division to produce the film Stanley and Stella: Breaking The Ice. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">2</field>
		<field name="published">1</field>
		<field name="created">2012-10-25 17:40:10</field>
		<field name="modified">2012-10-25 17:40:12</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">283</field>
		<field name="title">The End</field>
		<field name="story_type_id">3</field>
		<field name="date">1988-06-01 00:00:00</field>
		<field name="story">Unfortunately, before they could collect the remainder of an initial $5 million loan, the majority of the CG production industry collapsed (thanks to the Omnibus fiasco), and the investors balked.

After declaring bankruptcy in June of 1988, Gary Demos went on to form his own research company, DemoGraFX. John Whitney Jr. elected to stay and take the company through the bankruptcy proceedings himself. John continued the company under various names, initially starting fresh as OptoMystic. When another company's name was found to be similar to that of OptoMystic, he changed the name to Digital Animation Laboratories and later sold the assets of the company to US Animation Labs. In December of 1996, US Animation Labs split in two. It kept the production side as Virtual Magic and sold the company name and software side to Toon Boom Technologies. For a time, John ran his remaining original assets of Digital Animation Laboratories under the name Digital Editions Inc.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">2</field>
		<field name="published">1</field>
		<field name="created">2012-10-25 17:41:24</field>
		<field name="modified">2012-10-25 17:41:26</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">285</field>
		<field name="title">Stanley &amp; Stella in Breaking the Ice</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=SVcE5b1KDXY</field>
		<field name="video">SVcE5b1KDXY</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-25 17:48:25</field>
		<field name="modified">2012-10-25 17:48:28</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">286</field>
		<field name="title">John Turner Whitted</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.engr.ncsu.edu/images/dea/whitted2005_color.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 16:34:32</field>
		<field name="modified">2012-10-27 16:36:36</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">287</field>
		<field name="title">Turner Whitted Keynote at SIGGRAPH 2011 Pioneer's Dinner</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=7x1Ye8GBaEI</field>
		<field name="video">7x1Ye8GBaEI</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 16:37:24</field>
		<field name="modified">2012-10-27 16:37:32</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">288</field>
		<field name="title">James Blinn</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.fxguide.com/wp-content/uploads/2012/07/jim.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 16:45:22</field>
		<field name="modified">2012-10-27 16:45:24</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">289</field>
		<field name="title">ACM SIGGRAPH logo</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://upload.wikimedia.org/wikipedia/en/a/ad/ACM_SIGGRAPH_logo.svg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 16:56:17</field>
		<field name="modified">2012-10-27 16:56:19</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">290</field>
		<field name="title">in-house software</field>
		<field name="story_type_id">3</field>
		<field name="date">1990-01-01 00:00:00</field>
		<field name="story">All the software used for the first four years or so was written in-house, from image and object formats to animation tools and renderers. Using this proprietary script-based software, Xaos quickly became known for complex, organic imagery. This was quite contrary to the norm of the period, which largely consisted of rectilinear, beveled-chrome logos created with commercial software derived from industrial design applications.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 17:56:15</field>
		<field name="modified">2012-10-27 17:56:16</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">291</field>
		<field name="title">early crew</field>
		<field name="story_type_id">3</field>
		<field name="date">1990-01-01 00:00:00</field>
		<field name="story">The animation crew in late '89 consisted of Hayden Landis (ILM), Ken Pearce (PDI), and Tony Lupidi  (EA), followed by the additions of Henry Preston (ILM) and Roberta Brandao. This group was supported by the engineering teem of Tolson, Texier, and Michael Beese. Executive Producer from late '89 through '96 was Helene Plotkin (Producer of Toy Story 2 at Pixar).
During the mid- to late '90s, Xaos benefited from the substantial programming expertise of Cassidy Curtis (Brown University graduate), Sumit Das (previously of &quot;The Cave&quot; in Illinois, then PDI), and Kevin Rogers (later at Disney).</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 17:56:50</field>
		<field name="modified">2012-10-27 18:03:32</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">292</field>
		<field name="title">Lawnmower Man</field>
		<field name="story_type_id">3</field>
		<field name="date">1990-01-01 00:00:00</field>
		<field name="story">During the '89â€“90 period, Xaos produced more than eight minutes of animation for the film Lawnmower Man. While certainly a B-movie, Lawnmower Man topped the sales charts for a week and was, in fact, a milestone in its extensive use of computer animation. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 17:57:39</field>
		<field name="modified">2012-10-27 17:57:40</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">293</field>
		<field name="title">XAos Tools</field>
		<field name="story_type_id">3</field>
		<field name="date">1996-01-01 00:00:00</field>
		<field name="story">Tolson and Schwartzberg soon left Xaos to spin-off Xaos Tools, but the venture did not fare well. Arthur left Xaos Tools in 1996, and Michael followed in late 1998, soon after the venture filed for bankruptcy.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 17:59:04</field>
		<field name="modified">2012-10-27 17:59:05</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">294</field>
		<field name="title">mid-90's work</field>
		<field name="story_type_id">3</field>
		<field name="date">1996-01-01 00:00:00</field>
		<field name="story">Xaos continued to grow under Malmberg's presidency, garnering numerous awards for such projects as animation for the feature film The Pagemaster (starring Macaulay Culkin), a fully animated music video for the Grateful Dead (&quot;Infrared Roses&quot;), numerous commercials and film titles, and a pair of IDs for the SCI-FI channel that were mini sci-fi movies in themselves, complete with miniature motion-control models and an intergalactic battle sequence. Another Emmy followed in 1996 for a set of MSNBC IDs designed and produced by Xaos.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 17:59:55</field>
		<field name="modified">2012-10-27 18:00:07</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">295</field>
		<field name="title">Windows NT and large format work</field>
		<field name="story_type_id">3</field>
		<field name="date">1996-01-01 00:00:00</field>
		<field name="story">Xaos continued its role as an industry leader, becoming in 1996 the world's first high-end 3D CG animation company to officially move fully to Windows NT. This move, quite &quot;against the grain&quot; of the SGI-loyal industry, initially was the inspiration of Lupidi, whose background includes having helped establish the historic Amiga lab at Ohio State nearly a decade earlier.
Teaming closely with Intel, Kinetics, and Intergraph, Xaos entered the &quot;large-format&quot; world in 1996, producing its first two &quot;15-perf 70mm&quot; projects on prerelease Pentium Pro (then code-named &quot;P6&quot;) machines running the first 3D Studio MAX beta. In the ensuing years, Xaos has become a leading supplier of animation for the IMAX/large-format industry.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 18:01:04</field>
		<field name="modified">2012-10-27 18:01:05</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">296</field>
		<field name="title">later management changes</field>
		<field name="story_type_id">3</field>
		<field name="date">1997-01-01 00:00:00</field>
		<field name="story">In late '97, Schwartzberg rejoined the company as President, and Malmberg took this opportunity to focus on creative direction and to work with Christina Schmidlin, Executive Producer, in the development of the large-format market.
In late November 1998, Malmberg left Xaos, citing differences in management style, after dedicating 10 years to the direction and growth of this unique company. Malmberg now works at Radium, S.F. as a creative director specializing in C.G. along with his industry pals and Radium founders Jonathan Keaton and Simon Mowbray. Xaos continues to produce innovative animation and effects for the feature, large-format, and commercial markets.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 18:04:33</field>
		<field name="modified">2012-10-27 18:04:34</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">297</field>
		<field name="title">Superpaint</field>
		<field name="story_type_id">3</field>
		<field name="date">1970-01-01 00:00:00</field>
		<field name="story">The person who brought CG research to PARC under Taylor was Dr. Richard Shoup of Carnegie Mellon University. Shoup had been at the short-lived Berkeley Computer Company (BCC) from 1968 to 1970 and was given a full year upon starting at PARC to explore what it was he wanted to do. What he ended up doing was developing SuperPaint. Along with artist Alvy Ray Smith, Shoup experimented, designed, and built the first digital paint system with a non-random access, 8-bit framebuffer.
SuperPaint recorded and stored its first image at 486âˆž640 resolution (a picture of Dick Shoup holding a sign saying &quot;It works, sort of&quot;). The work was completed with assistance from Robert Flegal, Jim Curry, and Patrick Beaudelaire on April 10, 1973.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 18:19:36</field>
		<field name="modified">2012-10-27 18:20:00</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">298</field>
		<field name="title">Alvy Ray Smith and Superpaint</field>
		<field name="story_type_id">3</field>
		<field name="date">1971-01-01 00:00:00</field>
		<field name="story">&quot;My big technical contribution (I was really there as an artist) at Xerox PARC to Shoup's SuperPaint was invention and implementation of the RGB to HSV transform for artistic selection of colors. Other than this contribution, all other programming of SuperPaint was Dick's.&quot; </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">173</field>
		<field name="published">1</field>
		<field name="created">2012-10-27 18:20:49</field>
		<field name="modified">2012-10-27 18:21:06</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">299</field>
		<field name="title">Superpaint</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.rgshoup.com/prof/SuperPaint/images/SP_menu75.gif</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 18:22:05</field>
		<field name="modified">2012-10-27 18:22:08</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">300</field>
		<field name="title">Richard Shoup</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.rgshoup.com/prof/RGS-1a-med.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 18:23:22</field>
		<field name="modified">2012-10-27 18:23:23</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">301</field>
		<field name="title">the first PC in the White House!</field>
		<field name="story_type_id">3</field>
		<field name="date">1978-01-01 00:00:00</field>
		<field name="story">The first Alto PC was powered up in 1973 (displaying an image of Sesame Street's Cookie Monster). Its bitmap display was a vertical format 8âˆž11-inch screen with a resolution of 606âˆž808 pixels. With a maximum of 128k of main memory and a 2.5 meg disc, more than 2,000 were manufactured by 1978 at a cost of about $12,000 each. Upgraded as the AltoII in 1975 and the AltoIII in 1976, it actually was the first PC installed in the White House (in 1978). There's some irony, perhaps, in the fact that the world's first WYSIWYG computer was used in the heart of Washington politics.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 18:27:54</field>
		<field name="modified">2012-10-27 18:27:55</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">302</field>
		<field name="title">the first GUI</field>
		<field name="story_type_id">3</field>
		<field name="date">1975-01-01 00:00:00</field>
		<field name="story">In February 1975, the first GUI is demonstrated with multiple windows and pop-up menus. These later would be incorporated as a standard in Mac (and later Windows) operating desktop systems.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 18:28:28</field>
		<field name="modified">2012-10-27 18:28:29</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">303</field>
		<field name="title">Maurice Benayoun</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/MoBen.jpg/220px-MoBen.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-27 18:31:12</field>
		<field name="modified">2012-10-27 18:31:14</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">304</field>
		<field name="title">in-house software</field>
		<field name="story_type_id">3</field>
		<field name="date">1992-01-01 00:00:00</field>
		<field name="story">In addition to using Softimage, Z-A continues to develop its own software for animation. One of the most interesting is probably Persona. Interfaced with some classical 3D animation software, Persona is a complete toolbox for filtering captured inputs such as gestures (with magnetic trackers, for example), sounds (music, voice), mouse, joystick, and so on. Persona the animator can easily convert plain gestures in cartoon-like, robotic, elastic animation. For all virtual reality applications, Z-A R&amp;D (David Nahon, Tristan Lorach) has developed in-house software including the Zasoundserver, which is a tool for real-time sound mixing and 3D sound effects for 16 channels and up to eight outputs suitable to virtual environments. Mostly developed in OpenGL, some of these developments have been achieved thanks to the partnership of SGI Europe (Patrick Bouchaud, Kimi Bishop).</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">267</field>
		<field name="published">1</field>
		<field name="created">2012-10-27 18:37:01</field>
		<field name="modified">2012-10-27 18:37:02</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">305</field>
		<field name="title">World Skin</field>
		<field name="story_type_id">3</field>
		<field name="date">1998-01-01 00:00:00</field>
		<field name="story">In 1998, World Skin, a CAVE installation presented at Siggraph 98 (Orlando), received the Golden Nica interactive art award at Ars Electronica. All these artistic as well as philosophically challenging installations combined virtual reality, the Internet, intelligent agents, photographic cameras, and printers. These works, conceived by Maurice Benayoun, were able to give Z-A a leading edge in Europe with regard to interactive installations, museums, cultural theme parks, exhibitions, and events. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">267</field>
		<field name="published">1</field>
		<field name="created">2012-10-27 18:38:37</field>
		<field name="modified">2012-10-27 18:38:38</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">306</field>
		<field name="title">Omnibus demo reel - 1985</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=K18ZcE2t1Kw</field>
		<field name="video">K18ZcE2t1Kw</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 11:41:13</field>
		<field name="modified">2012-10-28 11:41:16</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">307</field>
		<field name="title">Ed Kramer</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://media.dexigner.com/article/12888/Ed_Kramer.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 12:02:19</field>
		<field name="modified">2012-10-28 12:02:23</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">308</field>
		<field name="title">for more information ...</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">For a more in-depth look at analog video animation, see &quot;ANALOG to DIGITAL Conversion: A History of Video Animation&quot; by Ed Kramer, published in the Conference Proceedings of the National Computer Graphics Association, Volume II, 1987 pp. 363â€“382. You also can visit the Scanimate Web page, maintained by former Image West engineer David Seig, at http://scanimate.zfx.com </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">129</field>
		<field name="published">1</field>
		<field name="created">2012-10-28 12:05:57</field>
		<field name="modified">2012-10-28 12:06:04</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">309</field>
		<field name="title">partial list of early users</field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">It would be impossible to name all the analog animation pioneers from the early days of computer graphics. Many of them, however, have remained active in the CG industry for almost 20 years including Rob Bekhurs, Susan Crouse-Kemp, Richard Froman, Dave Holman, Mike Jackson, Art Kellner, Fred Kessler, Sonny King, Jeff Kleiser, Henry Kline II, Peter Koczera, Ed Kramer, Russ Maehl, Gary McKinnon, Mike Saz, and Roy Weinstock. The late Ron Hays was one of the original pioneers of the aesthetics of video animation, and he is remembered for his elegant direction of effects in the music video for &quot;Sergeant Pepper's.&quot;</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">129</field>
		<field name="published">1</field>
		<field name="created">2012-10-28 12:06:33</field>
		<field name="modified">2012-10-28 12:06:34</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">310</field>
		<field name="title">The End</field>
		<field name="story_type_id">3</field>
		<field name="date">1985-06-01 00:00:00</field>
		<field name="story">In the early 1980s, with the digital revolution poised to wash over the effects industry, there were two attempts to create a digitally controlled analog video system. At Image West, David Seig engineered the VERSEFEX, a system in which full-color transparencies could be used as input. Digital oscillators and 3D perspective were incorporated to animate the same video parameters found in Scanimate. At Computer Image Corp., Ed Tajchman created the System IV, a true digital 3D animation system with accurate perspective and digital keyframing. Its input, however, was still monochrome video, and it carried a price tag of around a million dollars. The System IV was used in production (by this author) at Editel in Hollywood from 1983 to 1985 in conjunction with Scanimate.
With the introduction of the Ampex Digital Optics (ADO) digital video system in late 1981, digital paint systems such as the Quantel Paint Box in 1982, and affordable 3D animation systems such as the Bosch FGS-4000 in 1983, the era of analog effects was rapidly phased out in the United States by the mid-1980s.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">129</field>
		<field name="published">1</field>
		<field name="created">2012-10-28 12:07:17</field>
		<field name="modified">2012-10-28 12:07:18</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">311</field>
		<field name="title">how many scanimates?</field>
		<field name="story_type_id">3</field>
		<field name="date">1980-01-01 00:00:00</field>
		<field name="story">Eight Scanimates had been built, six of which were in the United States. Two were in Denver at Computer Image Corporation, Lee Harrison's company. (Harrison's team also created an analog animation device known as CAESAR, which was specifically used for character animation.) Two Scanimates were in New York at Dolphin Productions, and two more were in Hollywood at Image West.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">129</field>
		<field name="published">1</field>
		<field name="created">2012-10-28 12:08:20</field>
		<field name="modified">2012-10-28 12:08:21</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">312</field>
		<field name="title">The Golden Days</field>
		<field name="story_type_id">3</field>
		<field name="date">1980-01-01 00:00:00</field>
		<field name="story">The Golden Days
The aesthetics of television graphics were driven by analog technology in the 1970s and early '80s, and were defined by such Scanimate effects as shining gold logos flying over glowing grids and sparkling star fields. Because Scanimate used a video CRT, optical devices such as star filters, shower glass, or rainbow filters could be placed in front of the lens to make the logos glow or twinkle.
A Scanimate suite was much like a video-editing suite; image sources were combined through a video switcher using wipes, cross-dissolves, luminance keying, and chroma keying. Multiple images could be played back from multiple videotape machines through the switcher. Scanimate could be triggered to run in sync with any tape deck. (This was before the invention of VHS, Beta, or digital videotape. The professional video standard format at this time was reel-to-reel two-inch videotape!) Scanimate animation could be recorded on one tape machine, played back with another pass added on top, and then recorded to another machine.
These video techniques enabled Scanimate trickery to be used, for example, to create 3D gold flying logos. Here's the secret: An artist programmed Scanimate to create an undulating golden texture using oscillators patched into the INTENSITY parameter. (At Image West, we referred to this effect as &quot;Thrill-o-vision!&quot;) A 3D logo, physically carved from balsa wood, was attached to a wooden dowel and connected to a stepper motor. The front surface of the carved logo was painted white, and the extruded sides were painted gray. The whole logo was then mounted in front of a chroma key blue background. Patching these signals into the video switcher, the artist defined the logo's white front surface as a luminance key hole. He then replaced it with the moving gold texture from Scanimate. Setting a different luminance key for the gray surfaces, he patched a darker gold texture into the extruded sides. He then created a streaking Scanimate star field and replaced the chroma key blue with that. The artist added another Scanimate pass to make the logo glow and used an Apple II computer to drive the motor to rotate the logo. VoilÃ¡! A 3D gold logo rotating through space! All this was recorded to tape in real time with the capability to change speeds, color, or motion as the client and art director supervised.
</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id">129</field>
		<field name="published">1</field>
		<field name="created">2012-10-28 12:09:15</field>
		<field name="modified">2012-10-28 12:09:17</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">313</field>
		<field name="title">Imagewest Scanimate demo - 1978</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=wTO3CKM2Yy0</field>
		<field name="video">wTO3CKM2Yy0</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 12:11:27</field>
		<field name="modified">2012-10-28 12:11:28</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">314</field>
		<field name="title">Interview with Lee Harrison</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=SGF0Okaee1o</field>
		<field name="video">SGF0Okaee1o</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 12:15:14</field>
		<field name="modified">2012-10-28 12:15:16</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">315</field>
		<field name="title">Scientific and Technical Academy Award</field>
		<field name="story_type_id">3</field>
		<field name="date">1996-01-01 00:00:00</field>
		<field name="story">Ed Catmull, Tom Porter, Tom Duff, and Alvy Ray Smith received a Scientific and Technical Academy Award in 1996 from the Academy of Motion Picture Arts and Sciences (AMPAS) for &quot;pioneering inventions in digital image compositing&quot; (basically, for the invention of the alpha channel).</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 12:23:34</field>
		<field name="modified">2012-10-28 12:23:35</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">316</field>
		<field name="title">Alvy Ray Smith</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://alvyray.com/Bio/images/AlvyKingForbesASAP4x5.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 12:26:28</field>
		<field name="modified">2012-10-28 12:26:30</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">317</field>
		<field name="title">Scientific and Engineering Award</field>
		<field name="story_type_id">3</field>
		<field name="date">1999-01-01 00:00:00</field>
		<field name="story">In February 1999, the Academy of Motion Picture Arts and Sciences recognized Discreet Logic's flame and inferno products for their influence on the advancement of the motion picture industry with a Scientific and Engineering Award.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 12:43:30</field>
		<field name="modified">2012-10-28 12:43:32</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">318</field>
		<field name="title">The End</field>
		<field name="story_type_id">3</field>
		<field name="date">2000-01-01 00:00:00</field>
		<field name="story">Discreet Logic was acquired by Autodesk in 1999 for about $520 million in stock. Terms of the buyout were modified in early 1999 after an SEC review. The company is located in Montreal.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 12:44:48</field>
		<field name="modified">2012-10-28 12:44:49</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">319</field>
		<field name="title">How to light a blue screen</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=k1-1GpQVOJ4</field>
		<field name="video">k1-1GpQVOJ4</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 14:47:21</field>
		<field name="modified">2012-10-28 14:47:47</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">320</field>
		<field name="title">Zbigniew Rybczynski</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Zbigniew_Rybczy%C5%84ski.jpg/220px-Zbigniew_Rybczy%C5%84ski.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 14:53:50</field>
		<field name="modified">2012-10-28 14:53:52</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">321</field>
		<field name="title">ACM </field>
		<field name="story_type_id">3</field>
		<field name="date" xsi:nil="true" />
		<field name="story">Having received his Ph.D from the University of Minnesota, Kenneth Torrance made the move to Cornell University to teach mechanical and aerospace engineering in 1968.  During the next 42 years, he delighted and challenged students with his kind nature and probing intellect. Torrance used innovative strategies in computer graphics to further his research in heat transfer and fluid mechanics and subsequently became one of ACM SIGGRAPH's most highly respected researchers.  Recipient of the ACM SIGGRAPH Computer Graphics Achievement Award in 1994, Ken Torrance was a familiar face at SIGGRAPH conferences and became a valued volunteer and close-knit member of the SIGGRAPH community. ACM SIGGRAPH mourns the loss of one of our own; he will be dearly missed by all who knew him. </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 18:37:50</field>
		<field name="modified">2012-10-28 18:37:51</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">322</field>
		<field name="title">Kenneth Torrance</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://cornelldailysun.com/files/images/Pg-1-Kenneth-Torrance-Mug.thumbnail.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 18:39:31</field>
		<field name="modified">2012-10-28 18:39:33</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">323</field>
		<field name="title">the original Cornell box</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.graphics.cornell.edu/online/box/goral.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 18:41:41</field>
		<field name="modified">2012-10-28 18:42:50</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">324</field>
		<field name="title">The End</field>
		<field name="story_type_id">3</field>
		<field name="date">2012-05-14 00:00:00</field>
		<field name="story">&quot;Imagination Technologies announces the end of sale and end of life of the SplutterFish Brazil and Rio software plugins for 3ds Max, effective May 14, 2012. No further product development will be done on these products and no purchases will be accepted. There has been no development for Autodesk 3ds Max 2013.&quot;</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-28 18:52:35</field>
		<field name="modified">2012-10-28 18:52:37</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">325</field>
		<field name="title">Scientific and Technical Achievement Academy Award </field>
		<field name="story_type_id">3</field>
		<field name="date">1991-01-01 00:00:00</field>
		<field name="story">The digital ink and paint system was awarded a Scientific and Technical Achievement Academy Award in 1991. Seven individuals shared the award between Pixar Animation Studios and Disney. Tom Hahn, Peter Nye, and Michael Shantzis of Pixar developed the scan and paint part of the system. Randy Cartwright, Lem Davis, David Coons, Mark Kimball, Jim Houston, and David Wolf of Disney developed the Disney Logistics System (DALS) component.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 11:27:59</field>
		<field name="modified">2012-10-29 11:28:00</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">326</field>
		<field name="title">The End</field>
		<field name="story_type_id">3</field>
		<field name="date">2004-01-01 00:00:00</field>
		<field name="story">Unfortunately by 2004 Disney decided that â€œall 3Dâ€ movies where what the public wanted and CAPS (along with the entire 2D division) was shut down.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 11:28:33</field>
		<field name="modified">2012-10-29 11:28:35</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">327</field>
		<field name="title">First CAPS use </field>
		<field name="story_type_id">3</field>
		<field name="date">1989-01-01 00:00:00</field>
		<field name="story">CAPS was first used on a single scene at the end of The Little Mermaid in 1989. The Rescuers Down Under (1990) was the first film to be produced with no traditional cels at all (making it the first all digital feature film in that respect).</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 11:30:28</field>
		<field name="modified">2012-10-29 11:30:30</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">328</field>
		<field name="title">John Warnock</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://upload.wikimedia.org/wikipedia/commons/2/25/John_Warnock_2008.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 11:36:35</field>
		<field name="modified">2012-10-29 11:36:38</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">329</field>
		<field name="title">Alan Cutis Kay</field>
		<field name="story_type_id">2</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://upload.wikimedia.org/wikipedia/commons/c/c1/Alan_Kay2.jpg</field>
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 12:16:01</field>
		<field name="modified">2012-10-29 12:16:04</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">330</field>
		<field name="title">Academy Award</field>
		<field name="story_type_id">3</field>
		<field name="date">1993-01-01 00:00:00</field>
		<field name="story">In 1993 the developers of Pixar's RenderMan (Loren Carpenter , Rob Cook, Ed Catmull, Thomas Porter, Pat Hanrahan, Tony Apodaca &amp; Darwyn Peachey) won a Scientific and Engineering Achievement Award from the Academy of Motion Picture Arts and Sciences for RenderMan's contribution to the motion picture industry.</field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 12:30:45</field>
		<field name="modified">2012-10-29 12:32:34</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">331</field>
		<field name="title">How did Renderman get its name?</field>
		<field name="story_type_id">3</field>
		<field name="date">1989-01-01 00:00:00</field>
		<field name="story">&quot;Well, the short version of the story is that back in '86 or '87, the hardware people were building VME boards with 16 transputers to run the renderer. Just for grins, one of them (Jeff Mock) built a postcard-size, 4-TP board. Pat was in his office, and they were admiring the coolness of it, thinking how you could put it in a box and render while you're walking around. Prestoâ€”RenderMan!&quot;  </field>
		<field name="url" xsi:nil="true" />
		<field name="video" xsi:nil="true" />
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 12:33:26</field>
		<field name="modified">2012-10-29 12:33:40</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	<row>
		<field name="id">332</field>
		<field name="title">Red's Dream - 1987</field>
		<field name="story_type_id">1</field>
		<field name="date" xsi:nil="true" />
		<field name="story" xsi:nil="true" />
		<field name="url">http://www.youtube.com/watch?v=VA1vZ8wJTys</field>
		<field name="video">VA1vZ8wJTys</field>
		<field name="author_id" xsi:nil="true" />
		<field name="published">1</field>
		<field name="created">2012-10-29 12:38:23</field>
		<field name="modified">2012-10-29 12:38:24</field>
		<field name="source_name" xsi:nil="true" />
		<field name="source_url" xsi:nil="true" />
	</row>
	</table_data>
	<table_structure name="story_types">
		<field Field="id" Type="int(11) unsigned" Null="NO" Key="PRI" Extra="auto_increment" />
		<field Field="name" Type="varchar(20)" Null="NO" Key="" Default="" Extra="" />
		<key Table="story_types" Non_unique="0" Key_name="PRIMARY" Seq_in_index="1" Column_name="id" Collation="A" Cardinality="3" Null="" Index_type="BTREE" Comment="" />
		<options Name="story_types" Engine="InnoDB" Version="10" Row_format="Compact" Rows="3" Avg_row_length="5461" Data_length="16384" Max_data_length="0" Index_length="0" Data_free="10485760" Auto_increment="4" Create_time="2012-03-27 02:57:56" Collation="utf8_general_ci" Create_options="" Comment="" />
	</table_structure>
	<table_data name="story_types">
	<row>
		<field name="id">1</field>
		<field name="name">Video</field>
	</row>
	<row>
		<field name="id">2</field>
		<field name="name">Image</field>
	</row>
	<row>
		<field name="id">3</field>
		<field name="name">Text</field>
	</row>
	</table_data>
	<table_structure name="tags">
		<field Field="id" Type="int(11) unsigned" Null="NO" Key="PRI" Extra="auto_increment" />
		<field Field="name" Type="varchar(30)" Null="NO" Key="" Default="" Extra="" />
		<field Field="approved" Type="tinyint(1)" Null="NO" Key="" Default="1" Extra="" />
		<key Table="tags" Non_unique="0" Key_name="PRIMARY" Seq_in_index="1" Column_name="id" Collation="A" Cardinality="109" Null="" Index_type="BTREE" Comment="" />
		<options Name="tags" Engine="InnoDB" Version="10" Row_format="Compact" Rows="109" Avg_row_length="150" Data_length="16384" Max_data_length="0" Index_length="0" Data_free="10485760" Auto_increment="110" Create_time="2012-03-27 02:57:56" Collation="utf8_general_ci" Create_options="" Comment="" />
	</table_structure>
	<table_data name="tags">
	<row>
		<field name="id">1</field>
		<field name="name">student</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">2</field>
		<field name="name">NEU</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">3</field>
		<field name="name">software engineer</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">4</field>
		<field name="name">Producer</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">5</field>
		<field name="name">visual effects</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">6</field>
		<field name="name">SIGGRAPH</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">7</field>
		<field name="name">Senior Technical Director</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">8</field>
		<field name="name">Sequence Supervisor</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">9</field>
		<field name="name">Pixar</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">10</field>
		<field name="name">Animated Film</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">11</field>
		<field name="name">Animation</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">12</field>
		<field name="name">Motion Pictures</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">13</field>
		<field name="name">Software</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">14</field>
		<field name="name">Computer Scientist</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">15</field>
		<field name="name">President</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">16</field>
		<field name="name">Cartoon</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">17</field>
		<field name="name">Studio</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">18</field>
		<field name="name">Production Company</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">19</field>
		<field name="name">NYIT</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">20</field>
		<field name="name">University</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">21</field>
		<field name="name">Research</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">22</field>
		<field name="name">interactive media</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">23</field>
		<field name="name">design</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">24</field>
		<field name="name">capstone class</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">25</field>
		<field name="name">awesome</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">26</field>
		<field name="name">junk</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">27</field>
		<field name="name">jshdf</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">28</field>
		<field name="name">conference</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">29</field>
		<field name="name">ACM</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">30</field>
		<field name="name">film</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">31</field>
		<field name="name">animation</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">32</field>
		<field name="name"></field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">33</field>
		<field name="name">graphics</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">34</field>
		<field name="name">director</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">35</field>
		<field name="name">screenwriter</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">36</field>
		<field name="name">special effects</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">37</field>
		<field name="name">Luxor</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">38</field>
		<field name="name">previsualization</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">39</field>
		<field name="name">computer graphics</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">40</field>
		<field name="name">researcher</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">41</field>
		<field name="name">Creative Industries</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">42</field>
		<field name="name">Simpsons</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">43</field>
		<field name="name">Utah Teapot</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">44</field>
		<field name="name">Pacific Data Images</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">45</field>
		<field name="name">PDI/DreamWorks</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">46</field>
		<field name="name">PDI</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">47</field>
		<field name="name">designer</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">48</field>
		<field name="name">lalala</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">49</field>
		<field name="name">game</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">50</field>
		<field name="name">3D graphics</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">51</field>
		<field name="name">capstone</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">52</field>
		<field name="name">Northeastern University</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">53</field>
		<field name="name">Disney</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">54</field>
		<field name="name">project manager</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">55</field>
		<field name="name">amazing musician</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">56</field>
		<field name="name">software</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">57</field>
		<field name="name">Canadian</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">58</field>
		<field name="name">rendering</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">59</field>
		<field name="name">hardware</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">60</field>
		<field name="name">ILM</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">61</field>
		<field name="name">visual effects supervisor</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">62</field>
		<field name="name">research</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">63</field>
		<field name="name">video games</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">64</field>
		<field name="name">France</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">65</field>
		<field name="name">Pioneer</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">66</field>
		<field name="name">harware</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">67</field>
		<field name="name">motion-control</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">68</field>
		<field name="name">UK</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">69</field>
		<field name="name">SGI</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">70</field>
		<field name="name">production</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">71</field>
		<field name="name">scanimate</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">72</field>
		<field name="name">president</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">73</field>
		<field name="name">co-founder</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">74</field>
		<field name="name">Metrolight</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">75</field>
		<field name="name">Windlight</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">76</field>
		<field name="name">Nelvana</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">77</field>
		<field name="name">pioneer</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">78</field>
		<field name="name">Tron</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">79</field>
		<field name="name">professor</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">80</field>
		<field name="name">feature film</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">81</field>
		<field name="name">technical director</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">82</field>
		<field name="name">software design</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">83</field>
		<field name="name">book</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">84</field>
		<field name="name">history</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">85</field>
		<field name="name">Technical Director</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">86</field>
		<field name="name">simulation</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">87</field>
		<field name="name">TDI</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">88</field>
		<field name="name">Scanimate</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">89</field>
		<field name="name">animator</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">90</field>
		<field name="name">Art Director</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">91</field>
		<field name="name">Japan</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">92</field>
		<field name="name">founder</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">93</field>
		<field name="name">Wavefront</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">94</field>
		<field name="name">Minneapolis</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">95</field>
		<field name="name">hardware engineer</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">96</field>
		<field name="name">academic</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">97</field>
		<field name="name">broadcast</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">98</field>
		<field name="name">art</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">99</field>
		<field name="name">artist</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">100</field>
		<field name="name">raytracing</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">101</field>
		<field name="name">math</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">102</field>
		<field name="name">producer</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">103</field>
		<field name="name">French</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">104</field>
		<field name="name">analog</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">105</field>
		<field name="name">compositing</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">106</field>
		<field name="name">editing</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">107</field>
		<field name="name">image editing</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">108</field>
		<field name="name">rednering</field>
		<field name="approved">1</field>
	</row>
	<row>
		<field name="id">109</field>
		<field name="name">blah</field>
		<field name="approved">1</field>
	</row>
	</table_data>
	<table_structure name="users">
		<field Field="id" Type="int(11) unsigned" Null="NO" Key="PRI" Extra="auto_increment" />
		<field Field="first_name" Type="varchar(20)" Null="NO" Key="" Default="" Extra="" />
		<field Field="last_name" Type="varchar(30)" Null="NO" Key="" Default="" Extra="" />
		<field Field="email" Type="varchar(200)" Null="NO" Key="UNI" Default="" Extra="" />
		<field Field="password" Type="varchar(50)" Null="NO" Key="" Default="" Extra="" />
		<field Field="group_id" Type="int(11) unsigned" Null="NO" Key="" Default="2" Extra="" />
		<field Field="created" Type="datetime" Null="YES" Key="" Extra="" />
		<field Field="modified" Type="datetime" Null="YES" Key="" Extra="" />
		<key Table="users" Non_unique="0" Key_name="PRIMARY" Seq_in_index="1" Column_name="id" Collation="A" Cardinality="9" Null="" Index_type="BTREE" Comment="" />
		<key Table="users" Non_unique="0" Key_name="email" Seq_in_index="1" Column_name="email" Collation="A" Cardinality="9" Null="" Index_type="BTREE" Comment="" />
		<options Name="users" Engine="InnoDB" Version="10" Row_format="Compact" Rows="9" Avg_row_length="1820" Data_length="16384" Max_data_length="0" Index_length="16384" Data_free="10485760" Auto_increment="10" Create_time="2012-03-27 02:57:56" Collation="utf8_general_ci" Create_options="" Comment="" />
	</table_structure>
	<table_data name="users">
	<row>
		<field name="id">1</field>
		<field name="first_name">Stefano</field>
		<field name="last_name">DAmico</field>
		<field name="email">skdamico@gmail.com</field>
		<field name="password">6fb9ed561623d1be80b15c0e52389d5423a6b15e</field>
		<field name="group_id">2</field>
		<field name="created">2012-03-26 22:59:51</field>
		<field name="modified">2012-03-26 22:59:51</field>
	</row>
	<row>
		<field name="id">2</field>
		<field name="first_name">Terrence</field>
		<field name="last_name">Masson</field>
		<field name="email">tman@visualfx.com</field>
		<field name="password">913830ec55fab145e80ab190e1bafc2a8e14942d</field>
		<field name="group_id">2</field>
		<field name="created">2012-03-27 14:33:22</field>
		<field name="modified">2012-03-27 14:33:22</field>
	</row>
	<row>
		<field name="id">3</field>
		<field name="first_name">Connie</field>
		<field name="last_name">Chan</field>
		<field name="email">hello.cchan@gmail.com</field>
		<field name="password">2a92c83503a1c0fb61cce89f1b069e739222bd23</field>
		<field name="group_id">2</field>
		<field name="created">2012-03-28 19:37:50</field>
		<field name="modified">2012-03-28 19:37:50</field>
	</row>
	<row>
		<field name="id">4</field>
		<field name="first_name">Michelle</field>
		<field name="last_name">Gayowski</field>
		<field name="email">michelle.gayowski@gmail.com</field>
		<field name="password">2a92c83503a1c0fb61cce89f1b069e739222bd23</field>
		<field name="group_id">2</field>
		<field name="created">2012-03-28 21:25:58</field>
		<field name="modified">2012-03-28 21:25:58</field>
	</row>
	<row>
		<field name="id">5</field>
		<field name="first_name">James</field>
		<field name="last_name">Staub</field>
		<field name="email">james.staub@gmail.com</field>
		<field name="password">d3cb84f1600300a06a7da36de1d3214f83818b4b</field>
		<field name="group_id">2</field>
		<field name="created">2012-03-28 22:17:54</field>
		<field name="modified">2012-03-28 22:17:54</field>
	</row>
	<row>
		<field name="id">6</field>
		<field name="first_name">Brian</field>
		<field name="last_name">Sullivan</field>
		<field name="email">bri.sullivan@neu.edu</field>
		<field name="password">086f86f4ea6d9e82cc00e4a914037127a564ca88</field>
		<field name="group_id">2</field>
		<field name="created">2012-04-03 14:16:48</field>
		<field name="modified">2012-04-03 14:16:48</field>
	</row>
	<row>
		<field name="id">7</field>
		<field name="first_name">Ali</field>
		<field name="last_name">Aas</field>
		<field name="email">aas.alexandra@gmail.com</field>
		<field name="password">bd387ee897b089d564141ad5cc1f537554f420ac</field>
		<field name="group_id">2</field>
		<field name="created">2012-09-18 14:45:30</field>
		<field name="modified">2012-09-18 14:45:30</field>
	</row>
	<row>
		<field name="id">8</field>
		<field name="first_name">steve</field>
		<field name="last_name">yao</field>
		<field name="email">yao.s@husky.neu.edu</field>
		<field name="password">fcfbb2ced1610032bf31d0da60447369d71e4ee4</field>
		<field name="group_id">2</field>
		<field name="created">2012-10-16 06:15:35</field>
		<field name="modified">2012-10-16 06:15:35</field>
	</row>
	<row>
		<field name="id">9</field>
		<field name="first_name">Kyle</field>
		<field name="last_name">Montag</field>
		<field name="email">gordon117@gmail.com</field>
		<field name="password">33177d0a958397cf80710388ebd6f883f568d3f7</field>
		<field name="group_id">2</field>
		<field name="created">2012-12-01 18:52:56</field>
		<field name="modified">2012-12-01 18:52:56</field>
	</row>
	</table_data>
	<table_structure name="views">
		<field Field="id" Type="int(11) unsigned" Null="NO" Key="PRI" Extra="auto_increment" />
		<field Field="table_id" Type="int(11) unsigned" Null="NO" Key="" Extra="" />
		<field Field="table_name" Type="varchar(15)" Null="NO" Key="" Default="" Extra="" />
		<field Field="count" Type="int(11) unsigned" Null="NO" Key="" Extra="" />
		<key Table="views" Non_unique="0" Key_name="PRIMARY" Seq_in_index="1" Column_name="id" Collation="A" Cardinality="0" Null="" Index_type="BTREE" Comment="" />
		<options Name="views" Engine="InnoDB" Version="10" Row_format="Compact" Rows="0" Avg_row_length="0" Data_length="16384" Max_data_length="0" Index_length="0" Data_free="10485760" Auto_increment="1" Create_time="2012-03-27 02:57:56" Collation="utf8_general_ci" Create_options="" Comment="" />
	</table_structure>
	<table_data name="views">
	</table_data>
</database>
</mysqldump>
