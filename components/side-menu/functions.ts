import type { IListLevelStyle } from "./typings";

export const getListLevelStyle = (
  styles: IListLevelStyle[],
  levelNumber: number,
  element: "ul" | "li" | "div"
) => {
  const style = styles[levelNumber - 1];
  if (!style) return;
  return style[element] || "";
};
