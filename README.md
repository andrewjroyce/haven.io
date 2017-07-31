# haven.to
<p align="center"><img src="https://user-images.githubusercontent.com/25350697/28793899-88445bb2-7602-11e7-9395-3623caa501bf.gif"/></p>

An open-source project to better serve Toronto's homeless community.  
Haven was started with one central idea in mind: That in an increasingly technological world Torontonians finding themselves without homes deserve world-class technological access to City Services in pursuit of housing stability.  

Further, the adoption of this technology will decrease the time required by Social Workers to spend on each of their clients.  A simplified and visual representation of Client's Calgary Accuity Index provides a quick snapshot to social workers about their Clients needs and program service levels.  


## Setup
1. Clone
2. Run `bundle install` to install dependencies
3. Run `bin/rake db:create`
4. Run `bin/rake db:migrate`
5. Run `bin/rake db:seed`

## Working with Git
Always create your own branch and never commit directly to master branch, please follow these steps:

1. Create a new branch<br/>
`git checkout -b <<your branch name>>`
2. Push your branch to origin to track changes<br/>
`git push --set-upstream origin <<your branch name>>`
3. Commit and push all your changes to origin as you work once you are done your feature switch to local master branch<br/>
4. Now go on github and generate a pull request, ask another team member to review your code and merge it to remote master
5. Once your branch is merged checkout you local master branch and pull from origin<br/>
`git checkout master` <br/>
`git pull origin master`
6. Now delete your feature branch from origin as a clean up <br/>
`git push origin --delete <<your branch name>>`
7. Finally delete your remote feature branch <br/>
`git branch -d <<your branch name>>`

## Working with React
You will need to install yarn https://yarnpkg.com/en/docs/install after `bundle install`.

run `foreman start -f Procfile.dev` to start both rails and react server
Will listen on port :3000
