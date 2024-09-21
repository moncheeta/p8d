+++
template = "projects.html"
+++

<div class="row-fluid">
    <div class="span4 w-100">
        <h2><a href="https://git.prime8.dev/?p=mos.git">MOS</a></h2>
        <p>In my free time, I work on MOS, my minimal operating system. This project has deepened my understanding of OS internals, and I'm planning to rewrite it for the RISC-V architecture. While it's currently quite simple, I have plans to expand its features in the future.</p>
    </div>
    <div class="span4 w-100">
        <h2><a href="https://git.prime8.dev/?p=janitor.git">Janitor</a></h2>
        <p>During my summer internship at Amplifier Health, I developed a service that sorts audio files into three categories: speech, music, and noise. It started as a Python project using PyTorch and FastAPI, but I later ported it to Rust with tch-rs and Axum for better performance. I also created a command line interface that makes it easy for users to access and make use of the results. The service is designed to be fast, using efficient multithreading on the CPU and taking advantage of the GPU for highly parallel processing.</p>
    </div>
    <div class="span4 w-100">
        <h2><a href="https://github.com/moncheeta/summarizer">Summarizer</a></h2>
        <p>An experiment using a microservice architecture that transcribes and summarizes audio into text using OpenAI's API. One service acts as the frontend, allowing users to upload their audio files. Another service transcribes the audio using OpenAI's Whisper model. Finally, the last service summarizes it using GPT-4-Turbo. These services communicate through Kafka, where jobs are requested and results are received. The entire system is managed with a Docker Compose file.</p>
    </div>
</div>
<div class="row-fluid">
    <div class="span4 w-100">
        <h2><a href="https://github.com/Carter-Thomas/HSHacks-Project">D214 Tutor Connect</a></h2>
        <p>For HSHacks 2024, my friends and I developed a website to help students find tutors. Recognizing that not every school has a dedicated portal for peer tutoring, we created a district-wide, easily accessible platform. We used ReactJS for the user interface and Firebase for storage and authentication. In the end, we won 3rd place!</p>
    </div>
    <div class="span4 w-100">
        <h2><a href="https://git.prime8.dev/?p=csc.git">CSC Website</a></h2>
        <p>I built a website for the Computer Science Club (CSC) at Prospect High School during a mini-hackathon. The site displays the date and time of the next meeting, recent announcements, a roster of members, and ongoing discussions—all updated every hour using the Schoology API. Members can also share their projects by signing in with their Google accounts and uploading their work to a SQLite database. You can see it in action at <a href="https://csc.prime8.dev">csc.prime8.dev</a></p>
    </div>
    <div class="span4 w-100">
        <h2><a href="https://github.com/moncheeta/veteran_donations">Veterans Donation Website</a></h2>
        <p>For HSHacks 2023, my very first hackathon, I created a website for an organization that helps veterans manage donations. Donors can enter their Venmo username and specify the amount they would like to contribute. They receive a notification on their phone for confirmation, and each donor gets a thank-you email as a gesture of appreciation.</p>
    </div>
</div>
