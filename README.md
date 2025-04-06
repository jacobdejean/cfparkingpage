# CFParkingPage

A minimal, customizable domain parking page for Cloudflare Pages.

## Overview

CFParkingPage is a simple landing page for parking domains built with Astro and Tailwind and deployable on Cloudflare Pages. It displays clean defaults but does offers some basic customization.

![Screenshot](https://github.com/jacobdejean/cfparkingpage/blob/42190f4507ab050dbd1834c976388bbb88f1a927/screenshots/SCR-20250405-tsbi.png)

## Features

- Minimal design
- Configure with environment variables
- Mobile-responsive

Currently todo is adding a modal with a contact form

## Usage

You can setup this landing page by following the commands below:

```sh
# Copy the project
git clone https://github.com/jacobdejean/cfparkingpage.git

# Important, Wrangler will later pick this up as the project name
mv cfparkingpage/ your-domain-name/

cd your-domain-name/
npm install
npm run deploy
```

After the deploy command you will be greeted by Wrangler's project setup where you will be prompted to login and choose an account to deploy to.

Once deployed you will need to assign your domain, which you can do from the 'Custom Domains' tab you see once clicking into a pages project from the list of them. I would like to find a way to automate this part with Wrangler but this seems [not of interest](https://github.com/cloudflare/workers-sdk/issues/1146).

## Environment Variables

Customize the page content by setting these environment variables in your Cloudflare Pages project:

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
