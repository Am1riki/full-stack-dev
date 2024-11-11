import { APIRoute } from 'astro';

export const POST = ({ request }) => {
    try {
        const formData = request.json();

        const response = fetch("http://127.0.0.1:4322/api/formsave", {
            method: "POST",
            headers: {
              "Content-Type": "application/json"
            },
            body: request
          });

    } catch (error) {
        console.error(error);
    }

}