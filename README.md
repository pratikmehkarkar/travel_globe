# final_project

Travel Globe - A Destination For The New Millennium

# Note for Team Members:
1)Make sure you make commit in your own branch (branch name should be the author's name)

2)Some useful Git Commands and steps to make new branch and merge it to master

	- (before pushing your changes)Make new branch
	
		Command -> git branch branch_name
		
	- After creating your branch, select it
	
		Command -> git checkout branch_name
		
	- Now start the final steps to commit the data.
	
		Command -> git add -A
		
		Command -> git commit -m "message"
		
		Command -> git push (Be careful, if u r commit first time in the branch it will throw error so instead use the command given below)
		
					git push --set-upstream origin branch_name
					
	- Now merge the branch into master branch
	
		Command -> git checkout master
		
		Command -> git branch branch_name
		
	- That's All !!
	

