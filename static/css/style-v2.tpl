header.head-main {
  .section-topbar {}
  .container {
    > .row {
      > div {
        // .header-logo
        &:nth-of-type(2) {
          background-color: red!important;
        }
        &:nth-of-type(3) {
          background-color: blue!important;
          form {
            button.search-input-submit {
              padding: 7px;
              svg {
                width: 15px;
              }
            }
          }
        }
      }
    }
  }
}