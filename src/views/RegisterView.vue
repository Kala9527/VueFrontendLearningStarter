<template>
  <section class="auth-layout">
    <div>
      <p class="eyebrow">Account</p>
      <h1>Create your tea profile</h1>
      <p>Collect preferences for future checkout and gifting flows.</p>
    </div>
    <form class="auth-form">
      <label>Name<input type="text" placeholder="Your name" /></label>
      <label>Email<input type="email" placeholder="name@example.com" /></label>
      <label>Password<input type="password" placeholder="Password" /></label>
      <button class="button primary" type="button">Create account</button>
      <RouterLink to="/login">Already have an account?</RouterLink>
    </form>
  </section>
</template>
