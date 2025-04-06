# CFParkingPage

A minimal domain parking page for Cloudflare Pages.

## Overview

CFParkingPage is a simple landing page for parking domains built with Astro and Tailwind and deployable on Cloudflare Pages. It displays clean defaults but does offers some basic customization.

![Screenshot](https://github.com/jacobdejean/cfparkingpage/blob/42190f4507ab050dbd1834c976388bbb88f1a927/screenshots/SCR-20250405-tsbi.png)

## Features

- Minimal design
- Configure with environment variables
- Mobile-responsive

Currently todo is adding a modal with a contact form

## Deploying the Cloudflare Parking Page

1.  **Clone the project:** You'll do this for each domain you want to park.

    ```sh
    git clone https://github.com/jacobdejean/cfparkingpage.git
    cd cfparkingpage
    npm install
    ```

2.  **Rename the directory:** There are a few places the name needs to be updated so I've added a script [tooling/rename-project.sh](tooling/rename-project.sh) to automate this. It replaces 'cfparkingpage' in package.json, package-lock.json, and wranger.jsonc. Also renames the directory. .bak files are created for each file, these can be ignored or deleted if everything deploys correctly.

    ```sh
    npm run rename-project -- your-domain-name-com
    ```

3.  **Deploy the page:**

    ```sh
    npm run deploy
    ```

After the deploy command you will be greeted by Wrangler's project setup where you will be prompted to login and choose an account to deploy to. Make sure to select 'Create a new project'.

Once deployed you will need to assign your domain, which you can do from the 'Custom Domains' tab you see once clicking into a pages project from the list of them. I would like to find a way to automate this part with Wrangler but this seems [not of interest](https://github.com/cloudflare/workers-sdk/issues/1146).

Once the worker is deployed and the domain is connected, you're all set. What I like to do next is set up a forwarded address by navigating to domain in the dashboard, then finding 'Email Routing.' For example, if I'm parking a domain like 'jsonstorage.com', I'd like to have an 'inbox@jsonstorage.com' set up to foward to my business inbox. Once that is created, set `PUBLIC_EMAIL` variable to display it on the landing page.

## Environment Variables

Customize the page content by setting these environment variables in your Cloudflare Pages project.

These can be set in one of a few ways depending on how you want to use the project.

1. Run `wrangler pages secret put PUBLIC_EMAIL` then enter value when prompted. Need to run `npm run deploy` again.
2. Navigates to project secrets in the web dashboard. Need to run `npm run deploy` again.
3. Uncomment the 'vars' property in wrangler.jsonc and set value. Need to run `npm run deploy` again.

```
PUBLIC_PAGE_TITLE
PUBLIC_PAGE_CAPTION
PUBLIC_PAGE_COPYRIGHT
PUBLIC_EMAIL
```

## Tech Stack

- [Cloudflare Pages](https://developers.cloudflare.com/pages/)
- [Tailwind CSS](https://tailwindcss.com)
- [Astro](https://astro.build)

## License

MIT
