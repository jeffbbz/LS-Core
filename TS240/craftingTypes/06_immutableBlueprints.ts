interface Account {
  username: string;
  email: string;
  readonly accountCreationDate: string;
}

let account: Account = {
  username: "Barge45",
  email: "nickbarger@gmail.com",
  accountCreationDate: "May 12",
}

account.accountCreationDate = "May 13";
// Cannot assign to 'accountCreationDate' because it is a read-only property.

// Prepending the TS readonly modifer to a property name, makes that property unable to be
// re-assigned after its initial creation.