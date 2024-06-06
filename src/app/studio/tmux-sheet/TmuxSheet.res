let classes = css("./page.module.css")

@react.component
let make = () => {
  <div className={classes["container"]}>
    <table>
      <thead>
        <tr>
          <th> {"Command"->s} </th>
          <th> {"Description"->s} </th>
          <th> {"Possible values"->s} </th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td> {"Value"->s} </td>
          <td>
            {"Value"->s}
          </td>
          <td> {"22"->s} </td>
        </tr>
      </tbody>
    </table>
  </div>
}
