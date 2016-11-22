import Ember from 'ember';

export default Ember.Controller.extend({
	actions: {

		toggleActive: function(user){
			user.toggleProperty("active");
			user.save();
		}
	}
});
