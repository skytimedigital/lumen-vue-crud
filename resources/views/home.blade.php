
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Sky Time Digital - Single Page Application Production">
    <meta name="author" content="">
    <title>Sky Time Digital | Lumen | Contacts</title>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootswatch/4.3.1/flatly/bootstrap.css" media="screen">
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container">
        <a class="navbar-brand" href="#">Sky Time Digital</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarColor01">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
            </li>
          </ul>
          <ul class="navbar-nav">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user-o fa-2x" aria-hidden="true"></i> Dropdown</a>
              <div class="dropdown-menu" x-placement="bottom-start">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <a class="dropdown-item" href="#">Something else here</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Separated link</a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div id="app" class="container">
      <div class="container">
        <div class="page-header" id="banner">
          <div class="row">
            <div class="col-lg-8 col-md-7 col-sm-6">
              <p class="lead"><br>
                <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseForm" aria-expanded="false" aria-controls="collapseForm">
                <i class="fa fa-plus" aria-hidden="true"></i> Add Contactd
                </button>              
              </p>
            </div>
            <div class="col-lg-4 col-md-5 col-sm-6">
              <p class="lead">
                <h2 class="text-center">Contacts @{{ total}} <i type="button" class="fa fa-plus" aria-hidden="true" @click="getContactCount()"></i></h2>
              </p>
            </div>
          </div>
        </div>     
      <div>
        <div class="alert alert-dismissible alert-info">
          <button type="button" class="close" data-dismiss="alert">&times;</button>
          <h4 class="alert-heading">@{{ message }}</h4>
          <p class="mb-0"></p>
        </div>
        <div class="collapse multi-collapse" id="collapseForm">
          <form action="#" @submit.prevent="edit ? updateContact(contact.id) : createContact()">
            <div class="form-group">
              <label>Name</label>
              <input v-model="contact.name" type="text" name="name" class="form-control">
            </div>
            <div class="form-group">
              <label>Email</label>
              <input v-model="contact.email" type="text" name="email" class="form-control">
            </div>
            <div class="form-group">
              <label>Phone</label>
              <input v-model="contact.phone" type="text" name="phone" class="form-control">
            </div>
            <div class="form-group">
              <button v-show="!edit" type="submit" class="btn btn-primary">New Contact</button>
              <button v-show="edit" type="submit" class="btn btn-primary">Update Contact</button>
            </div>
          </form>
        </div>
          <hr>
          <table class="table">
            <thead class="table-success">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Phone</th>
                <th scope="col" class="text-center">Action</th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="contact in list">
                <th scope="row">@{{contact.id}}</th>
                <td>@{{contact.name}}</td>
                <td>@{{contact.email}}</td>
                <td>@{{contact.phone}}</td>
                <td class="text-center">
                  <button @click="showContact(contact.id)" class="btn btn-primary btn-xs" data-toggle="collapse" data-target="#collapseForm" aria-expanded="false" aria-controls="collapseForm">Edit</button> | 
                  <button @click="deleteContact(contact.id)" class="btn btn-danger btn-xs">Delete</button>
                </td>
              </tr>
            </tbody>
          </table>
          <div>

          <div class="pagination pagination-lg float-right">
            <button class="page-link" @click="fetchPaginateData(pagination.prev_page_url)" :disabled="!pagination.prev_page_url">
              &laquo;
            </button>
            <span class="page-link" >@{{ pagination.current_page }}  of  @{{ pagination.last_page }}</span>
            <button class="page-link" @click="fetchPaginateData(pagination.next_page_url)" :disabled="!pagination.next_page_url">
              &raquo;
            </button>
          </div> 
          </div>
        </div>        
      </div>      
    
    <footer id="footer">

    </footer>

    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/vue/2.6.10/vue.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/axios/0.19.0/axios.min.js"></script>
    <script>
      new Vue({
        el: '#app',
        data: function(){
          return {
            edit:false,
            list:[],
            total:'',
            message:'',
            contact:{
              id:'',
              name:'',
              email:'',
              phone:''
            },
            url: '/api/contacts',
            pagination:[]
          }
        },
        mounted: function(){
          console.log('Contacts Component Loaded...');
          this.alerts = 'success';
          this.message = 'Contacts Page';
          this.fetchContactList();
        },

        methods: {
          fetchPaginateData:function(url){
              this.url = url
              this.fetchContactList()
          },
          makePagination:function(data){
              let pagination = { 
              current_page: data.current_page,
              last_page: data.last_page,
              next_page_url: data.next_page_url,
              prev_page_url: data.prev_page_url
            }
            this.pagination = pagination
          },
          getContactCount:function(){
            console.log('Counting contacts...');
            axios.get('api/contact/total')
              .then((response) => {
                this.total = response.data;
              }).catch((error) => {
                console.log(error);
              });
          },
          fetchContactList:function(){
            console.log('Fetching contacts...');
            let $this = this
            axios.get(this.url)
              .then((response) => {
                console.log(response.data);
                this.list = response.data.data
                $this.makePagination(response.data)
                
              }).catch((error) => {
                console.log(error);
              });
              
          },
          createContact: function(){
            console.log('Creating contact...');
            let self = this;
            let params =Object.assign({}, self.contact);
            axios.post('api/contact/store', params)
              .then(function(){
                self.contact.name = '';
                self.contact.email = '';
                self.contact.phone = '';
                self.edit = false;
                self.fetchContactList();
              })
              .catch(function(error){
                console.log(error);
              });
          },
          showContact: function(id){
            let self = this;
            axios.get('api/contact/'+id)
              .then(function(response){
                self.contact.id = response.data.id;
                self.contact.name = response.data.name;
                self.contact.email = response.data.email;
                self.contact.phone = response.data.phone;
              })
              self.edit = true;
          },
          updateContact: function(id){
            console.log('Updating contact '+id+'...');
            let self = this;
            let params =Object.assign({}, self.contact);
            axios.put('api/contact/'+id, params)
              .then(function(){
                self.contact.name = '';
                self.contact.email = '';
                self.contact.phone = '';
                self.edit = false;
                self.fetchContactList();
              })
              .catch(function(error){
                console.log(error);
              });
          },
          deleteContact: function(id){
            console.log('Deleting contact '+id+'...');
            let self = this;
            axios.delete('api/contact/'+id)
              .then(function(response){
                self.fetchContactList();
              })
              .catch(function(error){
                console.log(error);
              });
          }
        }
      });
      $('.alert').fadeTo(3000, 0).hide(100); 
    </script>
    </body>
</html>
