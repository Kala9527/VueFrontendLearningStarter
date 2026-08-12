<template>
  <section class="auth-layout">
    <div>
      <p class="eyebrow">Account</p>
      <h1>Welcome back</h1>
      <p>Demo login screen for the storefront route set.</p>
    </div>
    <form class="auth-form">
      <label>Email<input type="email" placeholder="name@example.com" /></label>
      <label>Password<input type="password" placeholder="Password" /></label>
      <button class="button primary" type="button">Sign in</button>
      <RouterLink to="/register">Create account</RouterLink>
    </form>
  </section>
</template>
